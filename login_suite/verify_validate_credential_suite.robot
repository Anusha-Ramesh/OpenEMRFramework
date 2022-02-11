*** Settings ***
Documentation     This suite file verifes all test case related
...   the valid credentials

Library  SeleniumLibrary
Resource  ../base/common_functionality.resource

*** Test Cases ***
Verify Valid Credential Test
     Launch Browser
     Input Text    id=authUser    admin
     Input Password    id=clearPass    pass
     Select From List By Label    name=languageChoice     English (Indian)
     Click Element    xpath=//button[@type='submit']
     Title Should Be    OpenEMR
     Close Browser
