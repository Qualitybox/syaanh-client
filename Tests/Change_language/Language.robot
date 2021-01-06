*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Resource    ${EXECDIR}/PageObjects/Order.robot
Variables   Data.yaml

*** Test Cases ***
Change language
    [Tags]    UI
    Start Application
    Check pop-up          ${Popup_title}
    Close pop-up          ${Popup_title}
    Click login
    Fill up form Login    ${Mobile_login}    ${Password_login}
    Click button type     ${Btn_login}   
    Check pop-up not visible   ${Popup_login}
    Change language            ${Arabic}
    [Teardown]    Teardown tests