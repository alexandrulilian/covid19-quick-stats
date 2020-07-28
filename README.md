# covid19-quick-stats
## Short description
Tiny shell/awk script to see details about how Covid-19 disease evolved in a specific country.

## More details
This was developed on Unix environment. The programs used for this (shell and awk) can be found
for other platform too, but in order fo this to run on them, there might be some slight modifications
to be made.

The data is taken from [Our world on data](https://ourworldindata.org/coronavirus-source-data) and it
can be parsed in two ways:
1. to see the information for current day
2. to see information for the beginning

For both options you will see the current information, in this order: date (only for all registered days),
new cases, total cases, new deaths, total deaths, number of tests done, percentage of positive tests.
You can easily add new fields if you like, feel free to do it.

## How to use it
Run the script covid_info.sh, you will be asked for the code of the country you want to see the results
(e.g. rou for Romania, usa for USA, etc.). It is case insensitive, you can write it as you wish. Then
you will be asked if you want to see the results for today, in which you can respond with y(es) or n(o).
Selecting y will provide information about the current day, while selecting n will provide information 
about the all days registered. More details about formating above.

## Examples
### For current day
new cases: 1104

total cases: 45902

new deaths: 19

total deaths: 2206

new tests: 0

percentage positive tests: inf

### For all registered days
[...]

2020-07-06 391 28973 19 1750 0 inf

2020-07-07 250 29223 18 1768 16469 1,518

2020-07-08 397 29620 31 1799 13147 3,0197

2020-07-09 555 30175 18 1817 13179 4,21125

2020-07-10 614 30789 17 1834 14680 4,18256

2020-07-11 592 31381 13 1847 14610 4,05202


