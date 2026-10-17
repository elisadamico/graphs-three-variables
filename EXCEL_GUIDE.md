# Making the charts in Excel

There are two charts to try. Each one shows three variables.

## Chart 1. One disaster, two different results

Open `data/pooled_effects_for_excel.csv`.

| disaster | Drier | Wetter | Drier error bar | Wetter error bar |
|---|---|---|---|---|
| Flood | 12.21 | -4.43 | 11.43 | 4.89 |
| Drought | 2.92 | 12.11 | 7.42 | 5.96 |
| Extreme temperature | 3.46 | 2.55 | 5.67 | 16.36 |
| Storm | -4.7 | 14.98 | 6.84 | 11.31 |

Each number is the average change in wheat-flour prices after a disaster, in drier or wetter regions.

**Three variables:** disaster type (rows), regional climate (columns), and price effect (the numbers).

1. Select cells **A1 to C5**.
2. Go to **Insert → Clustered Column**.
3. Click any Drier bar, then **Chart Design → Add Chart Element → Error Bars → More Error Bar Options**. Choose **Custom → Specify Value** and use cells **D2:D5** for both positive and negative.
4. Do the same for the Wetter bars with cells **E2:E5**.
5. Add a vertical axis title, such as "Effect on wheat-flour price".

**What to look for.** Floods push prices up in drier regions but slightly down in wetter ones. If an error bar crosses zero, we cannot be confident there is any effect.

## Chart 2. Floods over time, coloured by El Niño

Open `data/floods_by_year_for_excel.csv`.

| year | El Nino | La Nina | Neutral |
|---|---|---|---|
| 2000 | | 52 | |
| 2001 | | 50 | |
| 2002 | | | 64 |
| 2003 | 133 | | |
| ... | | | |

Each number counts how many region-months had a flood that year, across the same 410 regions in 62 countries. Each year's number sits in the column for that year's climate phase (El Niño, La Niña, or Neutral). That is a simple trick to make Excel colour the bars by group.

**Three variables:** year (x-axis), number of floods (bar height), and climate phase (bar colour).

1. **Delete the word "year" in cell A1** and leave the cell empty. This tells Excel that column A is labels, not data.
2. Select cells **A1 to D23**.
3. Go to **Insert → Stacked Column**. (Stacked, so the empty cells do not leave gaps.)
4. Right-click a bar, choose **Format Data Series**, and set **Gap Width** to about 30%.
5. Add axis titles.

**Think about it.** Do El Niño years have more floods? Is this chart enough to say El Niño *causes* floods? What else would you want to know?

`data/floods_by_year.csv` has the same numbers in a "long" layout, plus storms. Try a line chart of floods and storms over time. That is three variables too: year, count, and disaster type.
