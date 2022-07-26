#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numofWorkingDays=20
totalsalary=0

for (( day=1; day<=$numofWorkingDays; day++ ))
do
	randomCheck=$((RANDOM%3))
case $randomCheck in 
			$isPartTime )
				empHrs=4
			;;
			$isFullTime )
				empHrs=8
			;;
			*)
				empHrs=0
			;;
	esac

	salary=$(( $empHrs * $empRatePerHr )) 
	totalsalary=$(($totalsalary+$salary))
done
