
#!/bin/bash -x

echo "Welcome To User Registration"

#Patterns
NAME_PATTERN="^[A-Z][a-z]{2,}$"
EMAIL_PATTERN="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"
MOBILE_NUMBER_PATTERN="^[0-9]{1,3}[' '][0-9]{10}$"
PASSWORD_AT_LEAST_ONE_UPPER_CASE_CHARACTER="^[a-zA-Z0-9]*(.*[A-Z].*{1}+)[a-zA-Z0-9]*{7,40}$"

#Validating user details
function validateUserDetails()
{
	local userDetails=$1 pattern=$2
	[[ $userDetails =~ $pattern ]] && echo "Valid Details" || echo "Invalid Details"
}

#Validating user mobile numbers
function validateUserMobileNumber()
{
	[[ $mobileNumber =~ $MOBILE_NUMBER_PATTERN ]] && echo "Valid Mobile Number" || echo "Invalid Mobile Number"
}

read -p "Enter First Name : " firstName
validateUserDetails $firstName $NAME_PATTERN

read -p "Enter Last Name : " lastName
validateUserDetails $lastName $NAME_PATTERN

read -p "Enter Email Id : " emailId
validateUserDetails $emailId $EMAIL_PATTERN

read -p "Enter Mobile Number : " mobileNumber
validateUserMobileNumber $mobileNumber $MOBILE_NUMBER_PATTERN

read -p "Enter Password(At least 8 characters long and at least 1 upper case character)  : " password
validateUserDetails $password $PASSWORD_AT_LEAST_ONE_UPPER_CASE_CHARACTER
