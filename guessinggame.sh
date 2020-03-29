#!/usr/bin/env bash
# File: guessinggame.sh
# Peer graded assignment - The Unix Workbench by Coursera/John's Hopkins University

# Counting  no. of files in the directory
filecount=$(ls -a | wc -l)
num="^[0-9]+$"
alpha="^[a-zA-Z]+$"
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
	echo "Guess how many files are in the current directory? "
	read -p "Enter your Guess: " guesscount
		if  [[ $guesscount =~ $num ]]
		then
		output
		elif [[ $guesscount =~ $alpha ]]
		then
		echo "You have entered alpha value. Re-enter only integer value"
		else
		echo "You have entered special characters. Enter only valid integer"
		fi
	echo ""
done
