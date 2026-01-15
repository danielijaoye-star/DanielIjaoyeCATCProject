#!/bin/bash
#
# Salary Scale
# Building step by step, using user input, if statements and loops
#

echo "Starting salary scale program..."

read -p "Enter starting salary: " salary
read -p "Enter number of salary points: " points
read -p "Enter annual increment: " increment
read -p "Is the employee a manager? (y/n): " manager

echo "DEBUG: Salary entered = £$salary"
echo "DEBUG: Points entered = $points"
echo "DEBUG: Increment entered = £$increment"
echo "DEBUG: Manager status = $manager"

echo ""
echo "Checking employee role..."

echo ""
# printf "Year: -- Salary: £%d\n" $salary

if [ "$manager" = "Y" ]; then
    multiplier=2
    echo "Manager role detected."
else
    multiplier=1
    echo "Standard employee detected."
fi

while ! [[ "$increment" =~ ^[0-9]+$ ]]; do
    echo "Increment must be a number!"
    read -p "Enter annual increment: " increment
done


echo ""
echo "Generating salary scale..."
echo "Year | Salary"

year=$(date +"%Y") # start with this year


for (( i=1; i<=points; i++ ))
do
  echo "DEBUG: Iteration $i - Year: $year, Salary: £$salary"
    echo "Year $year | £$salary"

    # update salary and year
    salary=$((salary + increment * multiplier))
    year=$((year + 1))
done

echo ""
echo "Salary scale generation complete."

