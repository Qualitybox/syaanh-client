*** Settings ***
Resource    ${EXECDIR}/PageObjects/Order.robot
Variables   Data.yaml

*** Test Cases ***
Change language
    [Tags]    UI    wip    sya
    Start Application
    Hendle Recommanded product popup
    Click login
    Fill up form Login    ${Mobile_login}    ${Password_login}
    Click button type     ${Btn_login}   
    Check pop-up not visible   ${Popup_login}
    Change language            ${Arabic}
