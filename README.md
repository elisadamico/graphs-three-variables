# Make a three-variable chart

Practice for the POL10170 guest lecture on graphs for three or more variables (UCD, October 2026).

**Optional.** This is not part of your assignment.

## The data

`data/pooled_effects.csv` has 8 rows. Each one is the average change in wheat-flour prices after a disaster, in drier or wetter regions.

| Variable | What it is |
|---|---|
| `disaster` | Flood, Drought, Storm, or Extreme temperature |
| `region_climate` | Drier or Wetter |
| `effect` | Change in wheat-flour price |
| `lower`, `upper` | 95% confidence interval |

`data/floods_by_year.csv` has 22 rows, one per year from 2000 to 2021. It counts the region-months with a flood or storm that year, and gives the El Niño phase (El Nino, La Nina, or Neutral).

## In Excel

Click the green **Code** button, then **Download ZIP**. Open the files ending in `_for_excel.csv` and follow [EXCEL_GUIDE.md](EXCEL_GUIDE.md).

## In R (in your browser)

1. Make a free account at [posit.cloud](https://posit.cloud).
2. Click **New Project → New Project from Git Repository** and paste in this page's address.
3. Run `install.packages("ggplot2")` in the Console.
4. Open `make_the_chart.R` and run it one line at a time with **Ctrl + Enter** (Windows) or **Cmd + Enter** (Mac).

## Sources

D'Amico, E. (2026). The price of instability: hydrological disasters, food prices, and violent conflict. *Humanities and Social Sciences Communications*. https://doi.org/10.1057/s41599-026-08590-1. Disaster data from EM-DAT (CRED, UCLouvain).

D'Amico, E. (2026). Regional El Niño patterns shape wheat-flour price responses to climate disasters. *Environmental Research Letters* 21, 184039. https://doi.org/10.1088/1748-9326/aea4c6. Full replication data: https://doi.org/10.7910/DVN/4QHFA1
