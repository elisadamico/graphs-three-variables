# Make a three-variable chart

Practice for the POL10170 guest lecture on graphs for three or more variables (UCD, October 2026).

**Optional.** This is not part of your assignment.

The slides from the lecture are in [lecture_slides.pdf](lecture_slides.pdf).

**Try it in your browser, no download needed:** [elisadamico.github.io/graphs-three-variables](https://elisadamico.github.io/graphs-three-variables/). Pick a dataset and up to three variables, like Teaching Charts.

## What's here

| Chart | Data | Make it in |
|---|---|---|
| 1. Disasters and food prices, drier vs. wetter regions | `data/pooled_effects.csv` | Excel or R |
| 2. Floods per year, coloured by El Niño phase | `data/floods_by_year.csv` | Excel |
| 3. Floods vs. El Niño strength, with a fitted line | `data/floods_by_year.csv` | Excel |

Files ending in `_for_excel.csv` hold the same numbers laid out for Excel.
Finished Excel charts are in the `answers` folder.

## In Excel

Click the green **Code** button, then **Download ZIP**. Open the files ending in `_for_excel.csv` and follow [EXCEL_GUIDE.md](EXCEL_GUIDE.md).

## In R (in your browser)

1. Make a free account at [posit.cloud](https://posit.cloud).
2. Click **New Project → New Project from Git Repository** and paste in this page's address.
3. Run `install.packages("ggplot2")` in the Console.
4. Open `make_the_chart.R` and run it one line at a time with **Ctrl + Enter** (Windows) or **Cmd + Enter** (Mac).

## Want to play with an interactive visualization?

[Bridging the Distance: New Insights on Geography in Conflict Mediation](https://tvancisin.github.io/elisa_damico/) presents a different study (on where peace talks take place) as an interactive web page. Click through the countries to explore the data. Research by Elisa D'Amico, web and visualizations by [Tomas Vancisin](https://github.com/tvancisin).

## Sources

D'Amico, E. (2026). The price of instability: hydrological disasters, food prices, and violent conflict. *Humanities and Social Sciences Communications*. https://doi.org/10.1057/s41599-026-08590-1. Disaster data from EM-DAT (CRED, UCLouvain).

D'Amico, E. (2026). Regional El Niño patterns shape wheat-flour price responses to climate disasters. *Environmental Research Letters* 21, 184039. https://doi.org/10.1088/1748-9326/aea4c6. Full replication data: https://doi.org/10.7910/DVN/4QHFA1
