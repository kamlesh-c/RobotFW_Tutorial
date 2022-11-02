*** Settings ***
Library           SeleniumLibrary
Library           Collections
Library           String
Library           SSHLibrary
Resource          Setting_Lib_veriable.resource

*** Variables ***
${username}     Kamlesh
${passwrod}     abc123

*** Test Cases ***
Test_case
    # This test cases for login to Facebook site using username passwrod
    Open Browser    https://www.facebook.com/login/   chrome
	Maximize Browser Window
	Input text      ${username}   //*[@id="email"]
	Input passwrod  ${passwrod}   //*[@id="pass"]
	Click element   //*[@id="loginbutton"]
	Sleep 10
    User_keyword	Cat   DOG
	Close Browser  



*** keyword ***
User_keyword
    [Arguments]    ${a}    ${b}
    Log ${a}
	Log ${b}