#!/usr/bin/env bash
# File: guessinggame.sh
# Peer graded assignment - The Unix Workbench by Coursera/John's Hopkins University

# Counting  no. of files in the directory
filecount=$(ls -lA | wc -l)
num="^[0-9]+$"
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
		    echo "Well done! Your guess is correct!"
		    exit 0
	          fi
	        }
# While loop
while [[ 0 ]]
  do
	echo "Guess how many files are in the current directory? "
	read -p "Enter your Guess: " guesscount
		if  [[ $guesscount =~ $num ]]
		then
			output
		elif ! [[ $guesscount =~ $num ]]
		then
			echo "You have entered non-integer value. Enter only integer value."
		else
			echo "You have entered non-integer value. Enter only integer value."
		fi
	echo ""
done
