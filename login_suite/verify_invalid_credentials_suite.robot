*** Settings ***
Documentation   this file handles all the test case related to
...   invalid credentials

Library   SeleniumLibrary
Resource  ../base/common_functionality.resource

Test Setup  Launch Browser
Test Teardown  End Browser


*** Test Cases ***
TC1

       Input Text    id=authUser    john
       Input Password    id=clearPass    john123
       Select From List By Label    name=languageChoice    Dutch
       Click Element    xpath=//button[@type='submit']
