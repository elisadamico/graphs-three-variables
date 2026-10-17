# Making the charts in Excel

You do not need R for these. Both files are in `data/excel/`. The steps below are for a recent version of Excel (Windows or Mac). Menu names can differ slightly between versions.

## Chart A. One disaster, two very different results

**File:** `pooled_effects_for_excel.csv`

| disaster | Drier | Wetter | Drier error bar | Wetter error bar |
|---|---|---|---|---|
| Flood | 12.21 | -4.43 | 11.43 | 4.89 |
| ... | | | | |

Each number is the average change in wheat-flour prices in the 13 months after a disaster. "Drier" and "Wetter" describe the regional climate at the time. The error bar columns give the size of the 95% confidence interval on either side of each bar.

**Three variables:** disaster type (x-axis), regional climate (bar colour), and price effect (bar height).

1. Open the file in Excel and select cells **A1 to C5** (disaster, Drier, Wetter).
2. Go to **Insert → Charts → Clustered Column**.
3. Add error bars to the Drier bars. Click any Drier bar, then **Chart Design → Add Chart Element → Error Bars → More Error Bar Options**. Choose **Custom → Specify Value** and set both the positive and the negative error value to cells **D2:D5**.
4. Do the same for the Wetter bars using cells **E2:E5**.
5. Add a vertical axis title ("Effect on wheat-flour price") and delete the chart title if you will write a caption instead.

**What to look for.** Floods push prices up in drier regions but slightly down in wetter ones. If an error bar crosses zero, we cannot be confident the effect is different from nothing.

## Chart B. Floods per year, coloured by El Niño phase

**File:** `yearly_floods_for_excel.csv`

| year | El Nino | La Nina | Neutral |
|---|---|---|---|
| 2000 | | 52 | |
| 2003 | 133 | | |
| ... | | | |

Each number counts the region-months with a recorded flood in that year, across the 410 regions in the study. Each year sits in only one column, depending on the ENSO phase that year. That is a simple trick for making Excel colour bars by category.

**Three variables:** year (x-axis), number of floods (bar height), and ENSO phase (bar colour).

1. Open the file and **delete the word "year" in cell A1** (leave the cell empty). This tells Excel that column A holds labels, not data.
2. Select cells **A1 to D23**.
3. Go to **Insert → Charts → Stacked Column**. (Stacked, so that the empty cells do not leave gaps.)
4. Right-click a bar, choose **Format Data Series**, and set **Gap Width** to around 30% so the bars are wider.
5. Change the colours if you like and add axis titles.

**Think about it.** Do El Niño years have more floods than La Niña years? Is this chart enough to say El Niño *causes* floods? What else would you want to know?

## Make your own version

Try a **line chart** for Chart A instead of columns. Is it better or worse? Why? Bar charts suit categories (like disaster type) and line charts suit things that change over time.
