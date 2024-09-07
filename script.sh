#!/bin/bash

for file in ./*.pdf
do
	
	creation_date=$(pdftk "$file" data_dump | grep apos | grep -oP '()\d{14}')
	mv $file $creation_date.pdf
	#creation_date=$(echo info | grep apos)
done