#!/bin/bash

<< disclaimer
this is just for enfotainment purpose

disclaimer

#this is function defination

function is_loyal() {
	read -p "$1 ne kisse mud ke dekha : " bandi
	read -p "$1 ka pyar % : " pyar

	if [[ $bandi == "jaya" ]]; then

		echo "$1 is loyal"

	elif [[ $pyar -ge 100 ]]; then 
		echo "$1 is loyal"

	else 
		echo "$1 is not loyal"

	fi

}
#function call

is_loyal "Shubham"

