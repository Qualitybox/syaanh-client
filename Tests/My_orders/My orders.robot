*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Variables   Data.py

*** Test Cases ***
My orders
    [Tags]    UI
    Start Application
    Check pop-up          ${Popup_title}
    Close pop-up          ${Popup_title}
    Click Element         ${Login}
    Fill up form Login    ${Mobile_login}    ${Password_login}
    Click Button          ${Button_login}   
    Wait Until Element Is Not Visible   ${Popup_login}
    Check my orders
    [Teardown]    Teardown tests