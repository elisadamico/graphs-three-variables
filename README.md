# Graphs with three or more variables: practice materials

Practice materials from the POL10170 Foundations in Political Research guest lecture (University College Dublin, October 2026). The data come from two published papers on climate disasters, food prices, and conflict.

**This is optional.** It is here for anyone who wants to try making these charts on their own. It is not part of your assignment.

## Three ways to use it

### 1. In Excel (no coding)

Click the green **Code** button above, then **Download ZIP**, and unzip it. Open the files in `data/excel/` and follow [EXCEL_GUIDE.md](EXCEL_GUIDE.md).

### 2. In R, in your browser (nothing to install)

1. Make a free account at [posit.cloud](https://posit.cloud).
2. Click **New Project → New Project from Git Repository** and paste in this page's web address.
3. When the project opens, run `install.packages("ggplot2")` in the Console (bottom-left). This takes a minute the first time.
4. Open `01_bar_chart_in_stages.R` from the Files pane (bottom-right).
5. Put your cursor on a line and press **Ctrl + Enter** (Windows) or **Cmd + Enter** (Mac) to run it. The plot appears in the bottom-right.

### 3. In R on your own computer

Download the ZIP as in option 1, open the folder in RStudio, and follow steps 3 to 5 above.

## What is in here

| File | What it is |
|---|---|
| `01_bar_chart_in_stages.R` | A bar chart with three variables, built in four stages. Start here. |
| `02_event_study_in_stages.R` | A line chart over time with three, then four, variables, built in five stages. |
| `EXCEL_GUIDE.md` | Step-by-step instructions for two charts in Excel. |
| `data/pooled_effects.csv` | Average effect of four disaster types on wheat-flour prices, in drier and wetter regions (8 rows). |
| `data/event_study.csv` | The same effects month by month, from 6 months before to 13 months after a disaster. |
| `data/yearly_disasters.csv` | Floods and storms per year, 2000 to 2021, with the El Niño phase for each year (22 rows). |
| `data/excel/` | Versions of the data laid out for Excel. |

Each R script adds one thing at a time (a variable, a colour, error bars, panels), so you can see exactly what each line of code changes. Run each stage and look at the plot before moving on.

## The papers

- D'Amico, E. (2026). The price of instability: hydrological disasters, food prices, and violent conflict. *Humanities and Social Sciences Communications*. https://doi.org/10.1057/s41599-026-08590-1
- D'Amico, E. (2026). Regional El Niño patterns shape wheat-flour price responses to climate disasters. *Environmental Research Letters* 21, 184039. https://doi.org/10.1088/1748-9326/aea4c6
- Interactive visualizations: https://tvancisin.github.io/elisa_damico/

## Data sources

The practice files are small summaries built from the replication data for the papers above. The underlying sources are:

- **Disasters:** EM-DAT, the International Disaster Database (CRED, UCLouvain). https://www.emdat.be/
- **Conflict:** UCDP Georeferenced Event Dataset (Uppsala Conflict Data Program). https://ucdp.uu.se/
- **Food prices:** World Food Programme, Vulnerability Analysis and Mapping. https://dataviz.vam.wfp.org/
- **El Niño phase:** NOAA Climate Prediction Center, Oceanic Niño Index.

Full replication data for the ERL paper are on Harvard Dataverse: https://doi.org/10.7910/DVN/4QHFA1
