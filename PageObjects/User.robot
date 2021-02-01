*** Settings ***
Resource    Common.robot
Variables    Webelements/User.py

*** Keywords ***

Go to my profile
    Wait Until Element Is Visible       ${usr_btn_user_option}
    Click Element   	                ${usr_btn_user_option}
    Wait Until Element Is Visible       ${usr_btn_my_profile}    timeout= 50
    Click Element   	                ${usr_btn_my_profile}
    Wait Until Element Is Visible       ${usr_txt_user_name}

Change user photo and name 
    [Arguments]    ${new_user_name}    ${file_path}
    ${usr_txt_new_user_name} =        Replace    ${usr_txt_new_user_name}    ${new_user_name}
    Wait Until Element Is Visible       ${usr_btn_edit_name}
    Click Element                       ${usr_btn_edit_name}
    Wait Until Element Is Visible       ${usr_popup_update_name}
    Clear Element Text                  ${usr_input_name}
    Input Text                          ${usr_input_name}    	            ${new_user_name}
    Choose File                         //div//label[@class="add-button btn btn-file"]//input              ${file_path}
    Click Element                       ${usr_btn_update}
    Wait Until Element Is Visible       ${usr_txt_new_user_name}

Change user password
    [Arguments]    ${new_password}
    Wait Until Element Is Visible       ${usr_txt_change_password}    timeout= 40
    Click Element                       ${usr_txt_change_password}
    Wait Until Element Is Visible       ${usr_popup_change_password}
    Input Text    	                    ${usr_input_new_password}    ${new_password}
    Input Text    	                    ${usr_input_confirm_password}    ${new_password}
    Click Element                       ${usr_btn_update_password}
    Wait Until Element Is Visible       ${usr_popup_password_updated} 