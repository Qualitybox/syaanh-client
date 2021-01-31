*** Settings ***
Resource    Common.robot
Variables    Webelements/Cart.py

*** Keywords ***

Go to my cart
    Wait Until Element Is Visible       ${cmn_btn_myCart}
    Click Element   	                ${cmn_btn_myCart}
    Wait Until Element Is Visible       ${cmn_txt_myCartTitle}
    

Remove Product From Cart
    [Arguments]    ${Product_name}
    Wait Until Page Contains Element    ${crt_txt_CartScreenTitle}
    ${cft_btn_DeleteProduct} =          Replace    ${crt_btn_DeleteProduct}    ${Product_name}
    Click Element                       ${cft_btn_DeleteProduct}
    Wait Until Element Is Visible       ${crt_btn_ConfirmDeletePopup}
    Click Element                       ${crt_btn_ConfirmDeletePopup}
    Wait Until Element Is Not Visible   ${crt_btn_ConfirmDeletePopup}
    Wait Until Element Is Not Visible   ${crt_btn_DeleteProduct}

Remove All Product From Cart
    Scroll Element Into View            ${crt_btn_CleatCart}
    Wait Until Element Is Visible       ${crt_btn_CleatCart}
    Click Button                        ${crt_btn_CleatCart}
    Wait Until Element Is Visible       ${crt_pop_up_ConfirmDelete}
    Wait Until Element Is Visible       ${crt_btn_ConfirmDeletePopup}    timeout= 50
    Click Button   	                    ${crt_btn_ConfirmDeletePopup}
    Wait Until Element Is Not Visible   ${crt_pop_up_ConfirmDelete}
    Wait Until Element Is Visible       ${crt_txt_EmptyCart}