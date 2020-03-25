#!/bin/bash -x
shopt -s extglob

echo "Welcome To User Registration"

#Patterns
namePattern="^[A-Z][a-z]{2,}$"
emailPattern="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"

#Validating user details
function validateUserDetails()
{
	local userDetails=$1 pattern=$2
	[[ $userDetails =~ $pattern ]] && echo "Valid Details" || echo "Invalid Details"
}

read -p "Enter First Name : " firstName
validateUserDetails $firstName $namePattern

read -p "Enter Last Name : " lastName
validateUserDetails $lastName $namePattern

read -p "Enter Email Id : " emailId
validateUserDetails $emailId $emailPattern
