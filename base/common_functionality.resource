*** Setting ***
Documentation   This file contains reusable keywords


Library  SeleniumLibrary

*** Keywords ***
Launch Browser
      Open Browser     browser=chrome    executable_path=${EXECDIR}${/}drivers${/}chromedriver.exe
     Maximize Browser Window
      Set Selenium Implicit Wait    30s
     Go To    url=https://demo.openemr.io/b/openemr/index.php