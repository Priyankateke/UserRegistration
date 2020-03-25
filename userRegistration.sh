#!/bin/bash -x
shopt -s extglob

echo "Welcome To User Registration"

#Patterns
firstNamePattern="^[A-Z][a-z]{2,}$"

read -p "Enter First Name : " firstName

#Validating user first name
function validateUserFirstName()
{
	local userDetails=$1 pattern=$2
	[[ $userDetails =~ $pattern ]] && echo "Valid Name" || echo "Invalid Name"
}

validateUserFirstName $firstName $firstNamePattern
