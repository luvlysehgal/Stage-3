#!/bin/bash -x
shopt -s extglob
echo "Registration form"

pattern="^[[:upper:]]{1}[[:lower:]]{3,}$"
function useCase() {

   read usrInput
   if [[ $usrInput =~ $pattern ]]
   then
		echo "Valid"
   else
   	echo "Not Valid"
   fi
}

#Use Case 1
echo "First name:"
useCase

#Use Case 2
echo "Last Name:"
useCase

#Use Case 3
pattern="^[0-9a-zA-Z]((\.|\_|\+|\-)?[0-9a-zA-Z]?)*@([0-9a-zA-Z])(.[a-zA-Z]){2,4}(.?[a-zA-Z]){2}$"
echo "Email id:"
useCase

#Use Case 4
pattern="^91[[:space:]][0-9]{10}$"
echo "Phone Number:"
useCase

#Use Case 5
pattern="[[:digit:]](?=.*[0-9]){1,}"
pattern="[[:upper:]](?=.*[A-Z]){1,}[a-z]{8,}"
pattern="([\#\@\!\$\%\&\*\_\-])+"
echo "Password:"
useCase
