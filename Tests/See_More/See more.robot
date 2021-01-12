*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Variables   Data.yaml

*** Test Cases ***
See more
    [Tags]    UI
    Start Application
    Check pop-up          ${Popup_title}
    Close pop-up          ${Popup_title}
    Click login
    Fill up form Login    ${Mobile_login}    ${Password_login}
    Click button type     ${Btn_login}   
    Check pop-up not visible   ${Popup_login}
    Clic See More categories
    [Teardown]    Teardown tests
