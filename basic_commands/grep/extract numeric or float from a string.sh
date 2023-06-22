\read input
#extract numeric or float from a string -E, --extended-regexp Interpret 
# PATTERNS as extended regular expressions (EREs, see below).

# options: -o , --only-matching Print only the matched (non-empty) parts 
# of a matching line, with each such part on a separate output line.
# -------------------------------------------------------------------
# extractng a single numeric value from a string by using grep command
single=$(echo "$input" | grep -o "[0-9]")

echo -e "single"
echo "$single"
# --------------------------------------------------------------------
# extracting whole values
multiple=$(echo "$input" | grep -o "[0-9]*")

echo -e "multiple"
echo "$multiple"
# --------------------------------------------------------------------
# -E, --extended-regexp
# Interpret  PATTERNS  as  extended regular expressions (EREs, see
#  below).
# extracting float
float=$(echo "$input" | grep -o -E "[0-9]*?[.]?[0-9]*")

echo -e "ffloat"
echo "$float"

# extracting minus_float
minus_float=$(echo "$input" | grep -o -E "[-]?[0-9]*?[.]?[0-9]*")
echo -e "minus_float"
echo "$minus_float"

# echo "all_values=$(echo "$input" | grep -o -E "[-]?[+]?[0-9]*?[.]?[0.9]*")" #same
all_values=$(echo "$input" | grep -o -E "[-]?[0-9]*?[.]?[0-9]*|[+]?[0-9]*?[.]?[0-9]*") #same

echo -e "all_values"
echo "$all_values"
