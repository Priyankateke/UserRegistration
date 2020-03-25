#!/bin/bash -x
shopt -s extglob

echo "Welcome To User Registration"

#Patterns
namePattern="^[A-Z][a-z]{2,}$"
emailPattern="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"
mobileNumberPattern="^[0-9]{1,3}[' '][0-9]{10}$"
passwordAtLeastEightCharacterLong="[a-z]{8,}"

#Validating user details
function validateUserDetails()
{
	local userDetails=$1 pattern=$2
	[[ $userDetails =~ $pattern ]] && echo "Valid Details" || echo "Invalid Details"
}

#Validating user mobile numbers
function validateUserMobileNumber()
{
	[[ $mobileNumber =~ $mobileNumberPattern ]] && echo "Valid Mobile Number" || echo "Invalid Mobile Number"
}

read -p "Enter First Name : " firstName
validateUserDetails $firstName $namePattern

read -p "Enter Last Name : " lastName
validateUserDetails $lastName $namePattern

read -p "Enter Email Id : " emailId
validateUserDetails $emailId $emailPattern

read -p "Enter Mobile Number : " mobileNumber
validateUserMobileNumber $mobileNumber $mobileNumberPattern

read -p "Enter Password(At least 8 characters long)  : " password
validateUserDetails $password $passwordAtLeastEightCharacterLong
