import os
import geopandas as gpd
import pandas as pd
import matplotlib.pyplot as plt
cmap = plt.colormaps.get_cmap("YlOrRd")   # or "" "Reds", "inferno", "magma" "YlOrRd"  OrRd
from matplotlib.colors import Normalize
from matplotlib import colors
import numpy as np
from matplotlib import colors



#import geodatasets

# === STEP 0: Define base path ===
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]  # .../Replication_Package_Tincani-20180648
DATA_PUBLIC = ROOT / "data"
DATA_CONF = ROOT / "confidential-data-not-for-publication"


# === STEP 1: Load CSV with town coordinates ===
# CSV file contains: nom_com_alu cod_com_alu	mean_damage_usd_college	mean_damage_usd_no_college	share_college_k	share_nocollege_k	latitude	longitude
input_csv = os.path.join(DATA_CONF, "processed", "data_for_map_2025_all.csv")
df = pd.read_csv(input_csv)

for c in ["mean_damage_usd_college","mean_damage_usd_no_college",
          "share_college_k","share_nocollege_k","latitude","longitude"]:
    df[c] = pd.to_numeric(df[c], errors="coerce")



# Convert to GeoDataFrame
gdf = gpd.GeoDataFrame(
    df,
    geometry=gpd.points_from_xy(df.longitude, df.latitude),
    crs="EPSG:4326"
)


# --- 2) Load Natural Earth "Admin 0 – Countries" 
#ne_countries = "https://naciscdn.org/naturalearth/110m/cultural/ne_110m_admin_0_countries.zip"
ne_countries = os.path.join(ROOT, "data", "raw", "ne_110m_admin_0_countries.zip")

world = gpd.read_file(ne_countries)
chile = world[world["ADMIN"].str.lower() == "chile"]

# --- 3) Split layers for your two panels
no  = gdf.rename(columns={"mean_damage_usd_no_college": "damage",
                          "share_nocollege_k": "share"})
col = gdf.rename(columns={"mean_damage_usd_college": "damage",
                          "share_college_k": "share"})

# --- 4) Plot
# Combine both groups' damage to compute shared limits
all_damage = pd.concat([no["damage"], col["damage"]], ignore_index=True)


vmin = 0.0
vmax = 4000.0 



norm = Normalize(vmin=vmin, vmax=vmax)
cmap = plt.colormaps.get_cmap("YlOrRd")  # YlOrRd



# --- Shared spatial extent (so both maps show Chile at same scale) ---
# --- Shared extent from Chile outline (with a small buffer) ---
xmin, ymin, xmax, ymax = chile.total_bounds
xpad = (xmax - xmin) * 0.05
ypad = (ymax - ymin) * 0.05
xlim = (xmin - xpad, xmax + xpad)
ylim = (ymin - ypad, ymax + ypad)



fig, axes = plt.subplots(1, 2, figsize=(10, 8), constrained_layout=True)

for ax, (d, title) in zip(
    axes,
    [(no, "Parents without college education"), (col, "Parents with college education")]
):
    # Chile outline under points
    chile.plot(ax=ax, color="#d9d9d9", edgecolor="0.6", linewidth=0.6, zorder=0)  # "whitesmoke 

    # Points
    d.plot(
        ax=ax,
        column="damage",
        cmap=cmap,
        norm=norm,    # shared color scale
        markersize=d["share"] * 2,        # adjust this multiplier to taste (e.g., 0.5 ~ 2)
        alpha=0.9,
        edgecolor="white", linewidth=0.3,
        legend=False,                     # don't attach per-axis colorbars
        zorder=1
    )
    ax.set_xlim(xlim)
    ax.set_ylim(ylim)
    ax.set_aspect('equal', adjustable='box')
    ax.set_title(title, fontsize=13)
    ax.set_axis_off()


# Shared colorbar
sm =  plt.cm.ScalarMappable(norm=norm, cmap=cmap) 
sm.set_array([])  # dummy array for colorbar
cbar = fig.colorbar(sm, ax=axes, orientation="horizontal", fraction=0.03, pad=0.05)
cbar.set_label("Average home damage (USD)")
tick_labels = [f"{t:.0f}" for t in cbar.get_ticks()]
tick_labels[-1] = f"{vmax:.0f}+"
cbar.set_ticklabels(tick_labels)


# Output folder 
output_folder = os.path.join(ROOT, "output", "figures")
os.makedirs(output_folder, exist_ok=True)

# Output figure path
output_fig = os.path.join(output_folder, "damage_propagation_by_SES_py.png")
plt.savefig(output_fig, dpi=300)
print(f"Figure saved to: {output_fig}")


