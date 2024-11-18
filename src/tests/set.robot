*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser


*** Variables ***
${SERVER}    localhost:5001
${DELAY}     0.5 seconds
${HOME_URL}  http://${SERVER}
${BROWSER}   chrome
${HEADLESS}  false

*** Test Cases ***
Set Counter To A Specific Value
    Go To  ${HOME_URL}
    Input Text  set  25
    Click Button  Aseta
    Page Should Contain  nappia painettu 25 kertaa
