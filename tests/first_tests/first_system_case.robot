*** Settings ***
Documentation    Example using the reStructuredText format.
Library          OperatingSystem

*** Variables ***
${MESSAGE}       Hello, world!

*** Test Cases ***
My Test
       [Documentation]    Example test
       Log    ${MESSAGE}
       My Keyword    /tmp

Another Test
    Should Be Equal    ${MESSAGE}    Hello, world!

*** Keywords ***
My Keyword
    [Arguments]             ${path}
    directory should exist  ${path}