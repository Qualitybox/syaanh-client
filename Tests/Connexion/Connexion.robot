*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Variables   Data.py

*** Test Cases ***
Connexion
    [Tags]    UI
    Start Application
    Check pop-up     ${Popup_title}
    [Teardown]    Teardown tests