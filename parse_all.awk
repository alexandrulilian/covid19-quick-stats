#!/bin/awk -f

$1 == countryCode {print $4, int($6), int($5), int($8), int($7), int($13), $6 / $13 * 100}
