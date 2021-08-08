#!/usr/bin/env bash

### slicing strings
slice_string="Mark D. Wilkinson"

# slice by specifying the starting index
echo "${slice_string:1}" # ark D. Wilkinson
echo "${slice_string:9}" # ilkinson

# slice of length 4 starting at index 0
echo "${slice_string::4}" # Mark

# slice of length 3 starting at index 9
echo "${slice_string:9:3}" # ilk


