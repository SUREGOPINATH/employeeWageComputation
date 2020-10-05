#!/bin/bash -x
echo "welcome to program";

##code of employee Attendece

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then
        echo "Employee is Present";
else
        echo "Employee is Abscent";
fi

##code of employee wage

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then
        empRatePerHr=20
        empHrs=8
        salary=$(($empHrs*empRatePerHr));
else
        salary=0;
fi

##code of adding parttime

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3));

if [ $isFullTime -eq $randomCheck ]
then
        empHrs=8;

elif [ $isPartTime -eq $randomCheck ]
then
        empHrs=4;

else
        empHrs=0;
fi

salary=$(($empHrs*$empRatePerHr));

##code of employee Wage using Case

isPartTime=1
isFullTime=2
empRatePerHr=20
empCheck=$((RANDOM%3))

case $empCheck in
        $isFullTime)
                empHrs=8
                ;;
        $isPartTime)
                empHrs=4
                ;;
        *)
                empHrs=0
                ;;
esac

salary=$(($empHrs*$empRatePerHr))

##code of employee for month

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
totalSalary=0
numWorkingDays=30

for (( day=1; day<=$numWorkingDays; day++ ))
do
        empCheck=$((RANDOM%3));
        case $empCheck in
                $isFullTime)
                        empHrs=8
                        ;;
                $isPartTime)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
        salary=$(($empHrs*$empRatePerHr));
        totalSalary=$(($totalSalary+$salary));
done

##code of employee wages till working hours

isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
numWorkingDays=20

totalEmpHrs=0
totalWorkingDays=0

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        totalWorkingDays=$(($totalWorkingDays+1))
        empCheck=$((RANDOM%3))
        case $empCheck in
                $isPartTime)
                        empHrs=4
                        ;;
                $isFullTime)
                        empHrs=8
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
        totalSalary=$(($totalSalary+($totalEmpHrs*$empRatePerHr)))
done

