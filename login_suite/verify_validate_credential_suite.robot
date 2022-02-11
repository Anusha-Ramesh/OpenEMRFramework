*** Settings ***
Documentation     This suite file verifes all test case related
...   the valid credentials

Library  SeleniumLibrary
Resource  ../base/common_functionality.resource

*** Test Cases ***
Verify Valid Credential Test
     Launch Browser
     Open Browser     browser=chrome    executable_path=${EXECDIR}${/}drivers${/}chromedriver.exe
     Maximize Browser Window
      Set Selenium Implicit Wait    30s
     Go To    url=https://demo.openemr.io/b/openemr/index.php
     Input Text    id=authUser    admin
     Input Password    id=clearPass    pass
     Select From List By Label    name=languageChoice     English (Indian)
     Click Element    xpath=//button[@type='submit']
     Title Should Be    OpenEMR
     Close Browser
