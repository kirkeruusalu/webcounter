*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  SeleniumLibrary.Close Browser

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
