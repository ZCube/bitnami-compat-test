#!/bin/bash
./gen_table.sh > table.md_
cat table.md_ | sed -E "s/success/:heavy_check_mark:/g"  | sed -E "s/fail/:x:/g"  | sed -E "s/null//g" > table.md

