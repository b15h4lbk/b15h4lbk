# for another type of pdf

#!/bin/bash

for file in ./*.pdf
do
	
	#creation_date=$(pdftk "$file" data_dump | grep apos | grep -oP '()\d{14}')
	creation_date=$(pdftk "$file" data_dump | awk '/InfoKey: CreationDate/{getline; print $0}' | sed 's/InfoValue: //')
	mv $file $creation_date.pdf
	#creation_date=$(echo info | grep apos)
done
