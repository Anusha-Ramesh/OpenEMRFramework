*** Setting ***
Documentation   This file contains reusable keywords


Library  SeleniumLibrary

*** Variables ***
${BROWSER_NAME}   chrome
${URL}     https://demo.openemr.io/b/openemr/index.php

*** Keywords ***
Launch Browser
      Open Browser     browser=${BROWSER_NAME}    executable_path=${EXECDIR}${/}drivers${/}chromedriver.exe
     Maximize Browser Window
      Set Selenium Implicit Wait    30s
      Set Screenshot Directory    executable_path=${EXECDIR}${/}screenshots
     Go To    url=${URL}


End Browser
#    Capture Page Screenshot
    Close Browser