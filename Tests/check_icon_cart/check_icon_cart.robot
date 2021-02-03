*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Variables   Data.py
Test Teardown    Close All Browsers
*** Test Cases ***
C20_User can management cart
    [Tags]    UI
    Start Application
    Hendle Recommanded product popup
    Click Element         ${Login}
    Fill up form Login    ${Mobile_login}    ${Password_login}
    Click Button          ${Button_login}   
    Wait Until Element Is Not Visible   ${icon_cart}  
    Click Element        ${icon_cart} 
    Wait Until Element Is Visible   ${check_popup}   
     Element Should Be Visible     ${list_categories}