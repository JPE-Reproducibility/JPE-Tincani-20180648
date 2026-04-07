# Author: Michela M. Tincani
# This version: March 2026

# Before running, install packages:
#pip install pandas
#pip install geopandas
#pip install geopy

import os
import pandas as pd
import geopandas as gpd
from shapely.geometry import Point, LineString, Polygon, MultiPolygon
from geopy.distance import geodesic


# === STEP 0: Define base path - insert here the path to the dataset folder  ===
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]  # .../Replication_Package_Tincani-20180648
DATA_PUBLIC = ROOT / "data"
DATA_CONF = ROOT / "confidential-data-not-for-publication"



# === STEP 1: Load CSV with town coordinates ===
# CSV file contains: nom_com_alu, latitude_alu, longitude_alu
input_csv = DATA_PUBLIC / "raw" / "comuna_alu_geocoded.csv"
towns_df = pd.read_csv(input_csv)

# Create GeoDataFrame
towns_gdf = gpd.GeoDataFrame(
    towns_df,
    geometry=[Point(xy) for xy in zip(towns_df["longitude_alu"], towns_df["latitude_alu"])],
    crs="EPSG:4326"
)

# === STEP 2: Load Coastline Shapefile ===
# Make sure all related files (.shp, .shx) are in the same folder
coastline_path = os.path.join(DATA_PUBLIC, "raw", "GSHHS_f_L1.shp")
coastline = gpd.read_file(coastline_path)



# Filter only polygon geometries
coastline = coastline[coastline.geometry.type.isin(["Polygon", "MultiPolygon"])]

# === STEP 3: Extract coastline boundaries ===
def extract_exterior_lines(geom):
    return (
        [geom.exterior] if isinstance(geom, Polygon)
        else [poly.exterior for poly in geom.geoms] if isinstance(geom, MultiPolygon)
        else []
    )



# Flatten all exterior lines into a list
exterior_lines = coastline.geometry.apply(extract_exterior_lines)
flat_lines = [LineString(line) for sublist in exterior_lines for line in sublist]
coastline_multiline = gpd.GeoSeries(flat_lines, crs="EPSG:4326").unary_union

# === STEP 4: Compute distances ===
def calculate_distance(point):
    return geodesic(
        (point.y, point.x),
        (coastline_multiline.interpolate(coastline_multiline.project(point)).y,
         coastline_multiline.interpolate(coastline_multiline.project(point)).x)
    ).km


towns_gdf["distance_to_coast_km"] = towns_gdf.geometry.apply(calculate_distance)

# === STEP 5: Save output ===
output_dir = DATA_CONF / "processed"
output_dir.mkdir(parents=True, exist_ok=True)
output_csv = output_dir / "towns_with_distance_to_coast.csv"
towns_gdf.drop(columns="geometry").to_csv(str(output_csv), index=False)

print("Saved: towns_with_distance_to_coast.csv")
