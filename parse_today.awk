#!/bin/awk -f

$1 == countryCode {newCases = int($6); totalCases = int($5); newDeaths = int($8); \
    totalDeaths = int($7); newTests = int($13); percentage = $6 / $13 * 100}
END {printf "new cases: %d\ntotal cases: %d\nnew deaths: %d\ntotal deaths: %d\nnew tests: %d\npercentage positive tests: %.2f\n", newCases, totalCases, newDeaths, totalDeaths, newTests, percentage}
