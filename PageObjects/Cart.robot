*** Settings ***
Resource    Common.robot
Variables    Webelements/Cart.py

*** Keywords ***

Remove Product From Cart
    [Arguments]    ${Product_name}
    Wait Until Page Contains Element    ${crt_txt_CartScreenTitle}
    ${cft_btn_DeleteProduct} =          Replace    ${crt_btn_DeleteProduct}    ${Product_name}
    Click Element                       ${cft_btn_DeleteProduct}
    Wait Until Element Is Visible       ${crt_btn_ConfirmDeletePopup}
    Click Element                       ${crt_btn_ConfirmDeletePopup}
    Wait Until Element Is Not Visible   ${crt_btn_ConfirmDeletePopup}
    Wait Until Element Is Not Visible   ${crt_btn_DeleteProduct}

