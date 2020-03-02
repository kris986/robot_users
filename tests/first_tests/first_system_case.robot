*** Settings ***
Library       SeleniumLibrary
Test Setup      Test Setup
Test Teardown   Close Browser
Force Tags      FunctionalTest
Default Tags    ValidTest

*** Variables ***
${BROWSER}       gc

*** Test Cases ***
Login Should Succeed When the Correct Username and Password are Entered
    [Tags]               InvalidTest
    Input Text           uname          BUser
    Input Text           pwd            TestPass
    Click Button         login
    Page Should Contain  Welcome

*** Keywords ***
Test Setup
    Open Browser  http://zdiles.chaosnet.org/  ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait   10