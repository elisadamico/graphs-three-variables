# Making the chart in Excel

Open `data/pooled_effects_for_excel.csv`.

| disaster | Drier | Wetter | Drier error bar | Wetter error bar |
|---|---|---|---|---|
| Flood | 12.21 | -4.43 | 11.43 | 4.89 |
| Drought | 2.92 | 12.11 | 7.42 | 5.96 |
| Extreme temperature | 3.46 | 2.55 | 5.67 | 16.36 |
| Storm | -4.7 | 14.98 | 6.84 | 11.31 |

**Three variables:** disaster type (rows), regional climate (columns), and price effect (the numbers).

1. Select cells **A1 to C5**.
2. Go to **Insert → Clustered Column**.
3. Click any Drier bar, then **Chart Design → Add Chart Element → Error Bars → More Error Bar Options**. Choose **Custom → Specify Value** and use cells **D2:D5** for both positive and negative.
4. Do the same for the Wetter bars with cells **E2:E5**.
5. Add a vertical axis title, such as "Effect on wheat-flour price".

**What to look for.** Floods push prices up in drier regions but slightly down in wetter ones. If an error bar crosses zero, we cannot be confident there is any effect.
