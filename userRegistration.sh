#!/bin/bash -x
shopt -s extglob

echo "Welcome To User Registration"

#Patterns
namePattern="^[A-Z][a-z]{2,}$"

#Validating user name
function validateUserName()
{
	local userDetails=$1 pattern=$2
	[[ $userDetails =~ $pattern ]] && echo "Valid Name" || echo "Invalid Name"
}

read -p "Enter First Name : " firstName
validateUserName $firstName $namePattern
read -p "Enter Last Name : " lastName
validateUserName $lastName $namePattern
