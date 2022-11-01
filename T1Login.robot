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
    # This test cases for login to Facebook site using username passwrod
    Open Browser    https://www.facebook.com/login/   chrome
	Maximize Browser Window
	Input text      ${username}   //*[@id="email"]
	Input passwrod  ${passwrod}   //*[@id="pass"]
	Click element   //*[@id="loginbutton"]
	Close Browser  
	
Test_case 2
     # New loin for IRCTC
	 Open Browser https://www.irctc.co.in/nget/train-search   chrome
	 Maximize Browser Window
	Input text      ${username}   //*[@id="email"]
	Input passwrod  ${passwrod}   //*[@id="pass"]
	Click element   //*[@id="loginbutton"]
	Close Browser  
