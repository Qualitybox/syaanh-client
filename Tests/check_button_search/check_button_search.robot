*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Variables   Data.py
Test Teardown    Close All Browsers
*** Test Cases ***
check_button_search
    [Tags]    UI
    Start Application
    Check pop-up          ${Popup_title}
    Close pop-up          ${Popup_title}
    Click Element         ${Login}
    Fill up form Login    ${Mobile_login}    ${Password_login}
    Click Button          ${Button_login}   
    Wait Until Element Is Not Visible   ${Popup_login}
    Scroll Element Into View        ${button_search}  
    Click Element        ${button_search}    
    Wait Until Element Is Visible   ${check_popup}   
     #Element Should Be Visible     ${list_categories}   