*** Settings ***
Documentation     This suite file verifes all test case related
...   the valid credentials

Library  SeleniumLibrary
Resource  ../base/common_functionality.resource

Library    DataDriver   file=../test_data/verify_validate_credential.csv

Test Setup  Launch Browser
Test Teardown  End Browser

Test Template  Verify Valid Credential Template

*** Test Cases ***
TC1

*** Keywords ***
Verify Valid Credential Template
       [Arguments]          ${username}            ${password}         ${language}       ${expected_title}
       Input Text    id=authUser    ${username}
     Input Password    id=clearPass    ${password}
     Select From List By Label    name=languageChoice     ${language}
     Click Element    xpath=//button[@type='submit']
     Title Should Be    ${expected_title}

