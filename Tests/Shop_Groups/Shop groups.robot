*** Settings ***
Resource    ${EXECDIR}/PageObjects/Order.robot
Variables   Data.yaml

*** Test Cases ***
Shop groups
    [Tags]    UI
    Start Application
    Hendle Recommanded product popup
    Click login
    Fill up form Login    ${Mobile_login}    ${Password_login}
    Click button type     ${Btn_login}   
    Check pop-up not visible   ${Popup_login}
    Purchase from Shop groups    ${Category}    ${Product}
    [Teardown]    Teardown tests
