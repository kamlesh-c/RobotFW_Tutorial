*** Settings ***
Library           SeleniumLibrary
Library           Collections
Library           String
Library           SSHLibrary
Resource          Setting_Lib_veriable.resource

*** Variables ***
${username}     Kamlesh
${passwrod}     abc123
${STRING}         cat
${NUMBER}         ${1}
@{LIST}           one    two    three
&{DICTIONARY}     string=${STRING}    number=${NUMBER}    list=@{LIST}
${ENVIRONMENT_VARIABLE}    %{PATH=Default value}

*** Test Cases ***
Test_case
    Open Browser    https://www.facebook.com/login/   chrome
	Maximize Browser Window
	Input text      ${username}   //*[@id="email"]
	Input passwrod  ${passwrod}   //*[@id="pass"]
	Click element   //*[@id="loginbutton"]
	Close Browser  