*** Settings ***
Resource    ${EXECDIR}/PageObjects/Common.robot
Variables   Data.py

*** Test Cases ***
Create order
    [Tags]    UI
    Start Application
    Check pop-up          ${Popup_title}
    Close pop-up          ${Popup_title}
    Click Element         ${Login}
    Fill up form Login    ${Mobile_login}    ${Password_login}
    Click Button          ${Button_login}   
    Wait Until Element Is Not Visible   ${Popup_login}
    Scroll Element Into View    ${Service}
    Click service         ${Service_cleaning}
    Fill up first step to create order    ${Area}    ${Requested_service}    ${Type}
    Scroll Element Into View    ${Button_continue1}
    Click Button          ${Button_continue1}
    Next step title       ${Step2}
    Click Button          ${Button_continue2}
    Next step title       ${Step3}
    Fill up third step to create order    ${Nationality}    ${Sex}    ${Required_materials}
    Scroll Element Into View    ${Button_continue3}
    Click Button          ${Button_continue3}
    Next step title       ${Step4}
    Input description     ${Description_text}
    Cocher case a cocher  ${Preferred_time}
    Click Button          ${Button_continue4}
    Next step title       ${Step5}
    Click Button          ${Button_final}
    Verification information last step   ${Type}    ${Nationality}    ${Sex}
    Scroll Element Into View    ${Button_confirm_and_send}
    Click Button          ${Button_confirm_and_send}
    Wait Until Element Is Visible   ${Popup_success}
    [Teardown]    Teardown tests