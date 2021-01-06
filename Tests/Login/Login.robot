*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Variables   Data.yaml
Test Teardown    Teardown tests

*** Test Cases ***
Login
    [Tags]    UI
    Start Application
    Check pop-up          ${Popup_title}
    Close pop-up          ${Popup_title}
    Click login
    Fill up form Login    ${Mobile_login}    ${Password_login}
    Click button type     ${Btn_login}   
    Check pop-up not visible   ${Popup_login}
    
Login_incorrect
    [Tags]    UI
    Start Application
    Check pop-up          ${Popup_title}
    Close pop-up          ${Popup_title}
    Click login
    Fill up form Login    ${Mobile_login_invalid}    ${Password_login_invalid}
    Click button type     ${Btn_login}   
    Check error message   ${msg_login_invalid}
