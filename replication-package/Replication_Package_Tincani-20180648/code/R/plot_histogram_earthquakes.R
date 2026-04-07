options(repos = c(CRAN = "https://cloud.r-project.org"))

install.packages(c("ggplot2", "dplyr"))
library(ggplot2)
library(dplyr)

# 1) Set directories -- change to your folders
#out_dir <- "[insertpath]/Replication_Package_Tincani-20180648/output/figures"    
#if (!dir.exists(out_dir)) dir.create(out_dir, recursive = TRUE)
#in_dir <- "[insertpath]/Replication_Package_Tincani-20180648/data/raw" 

# 1) Automatically detect replication package root directory
args <- commandArgs(trailingOnly = FALSE)
script_path <- sub("^--file=", "", args[grep("--file=", args)])
script_dir <- dirname(normalizePath(script_path))

# code/R -> go up two levels to reach the package root
root_dir <- normalizePath(file.path(script_dir, "..", ".."))

out_dir <- file.path(root_dir, "output", "figures")
if (!dir.exists(out_dir)) dir.create(out_dir, recursive = TRUE)

in_dir <- file.path(root_dir, "data", "raw")

# 2) Read data 
data <- read.csv(file.path(in_dir, "earthquake_catalog_6.csv"))

# 3) Build plot (store it)
p <- ggplot(data, aes(x = mag)) +
  geom_histogram(binwidth = 0.5, fill = "cornsilk2", color = "black") +
  annotate("text", x = 8.8, y = 2000, label = "2010 Maule earthquake",
           color = "black", size = 4) +
  annotate("segment", x = 8.8, xend = 8.8, y = 1500, yend = 8,
           color = "black",
           arrow = arrow(type = "closed", length = grid::unit(0.2, "inches"))) +
  labs(title = "Worldwide earthquakes with magnitude above 6, 1900-2023",
       x = "Magnitude",
       y = "Frequency") +
  theme_minimal() +
  theme(plot.title = element_text(size = 18, hjust = 0.5),
        panel.grid = element_blank())

# 4) Display in VS Code / interactive session
# print(p)



# 5) Save to file
cat("root_dir:", root_dir, "\n")
cat("Saving to:", file.path(out_dir, "earthquake_distribution.png"), "\n")
ggsave(
  filename = file.path(out_dir, "earthquake_distribution.png"),
  plot = p,
  width = 8, height = 5, dpi = 300
)
out_file <- file.path(out_dir, "earthquake_distribution.png")
cat("File exists after ggsave?:", file.exists(out_file), "\n")
