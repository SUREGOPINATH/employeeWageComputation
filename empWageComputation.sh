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
        read -p "Enter Employee rate per Hour : " empRatePerHr
        read -p "Enter No.of hours employee worked : " empHrs
        salary=$(($empHrs*empRatePerHr));
else
        salary=0;
fi

