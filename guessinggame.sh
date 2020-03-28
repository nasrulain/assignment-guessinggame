#!/usr/bin/env bash
# File: guessinggame.sh
# Peer graded assignment - The Unix Workbench by Coursera/John's Hopkins University

# Counting  no. of files in the directory
filecount=$(ls -a | wc -l)

# Function with IF condition to check guessed value
function output {
	    	  if [[ $guesscount -lt $filecount ]]
	          then
		    echo "Too low!"
	          elif [[ $guesscount -gt $filecount ]]
	          then
		    echo "Too high!"
	          else
		    echo ""
		    echo "Well done! You guess is correct!"
	          fi
	        }

# While loop
while [[ $filecount -ne $guesscount ]]
  do
	read -p "Guess how many files are in the current directory? " guesscount
	output
	echo ""
done

