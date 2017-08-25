#!/bin/bash
find . -iname *.h -exec grep -e ": public" {} \; | sed 's/\}//g' | sed 's/WXDLLIMPEXP_FREECHART//g' | sed 's/  / /g' > class.txt
