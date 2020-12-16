*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Variables   Data.py

*** Test Cases ***
Login
    [Tags]    UI
    Start Application
    Check pop-up          ${Popup_title}
    Close pop-up          ${Popup_title}
    Click Element         ${Login}
    Fill up form Login    ${Mobile_login}    ${Password_login}
    Click Button          ${Button_login}   
    Wait Until Element Is Not Visible   ${Popup_login}
    [Teardown]    Teardown tests
    
Login_incorrect
    [Tags]    UI
    Start Application
    Check pop-up          ${Popup_title}
    Close pop-up          ${Popup_title}
    Click Element         ${Login}
    Fill up form Login    ${Mobile_login_invalid}    ${Password_login_invalid}
    Click Button          ${Button_login}   
    Wait Until Element Is Visible   ${msg_login_invalid}
    [Teardown]    Teardown tests