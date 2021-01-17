*** Settings ***
Resource    Common.robot
Variables    Webelements/Shop.py

*** Keywords ***

Purchase from Shop groups
    [Arguments]     ${groups}    ${product}=${None}
    ${shopFirstElement} =     Replace    ${shopFirstElement}         ${groups}
    #${product_groups} =      Replace    ${product_groups}          ${product}
    Scroll Element Into View         ${shopFirstElement}
    Wait Until Element Is Visible    ${shopFirstElement}
    Click Element                    ${shopFirstElement}
    Wait Until Element Is Visible       //h1[contains(text(),"Product details")]
    Click Add to cart
    Wait Until Element Is Visible       //div[@class="item-basket"]//p[contains(text(),"Added to basket")]

Click Add to cart
    Wait Until Element Is Visible       //button[contains(text(),"Add to cart")]
    Click Button                        //button[contains(text(),"Add to cart")]

Purchase from Shop menu
    [Arguments]    ${shop_category}     ${product_name}=${None}
    ${category} =    Set Variable       //h6[contains(text(),"${shop_category}")]
    ${product} =                        Set Variable If
    ...  "${product_name}"=="${None}"   //*[@class="shop-electronics__item"]
    ...                                 //h5[contains(text(),"${product_name}")]
    Wait Until Element Is Visible       //h3[contains(text(),"Shop categories")]
    Click Element   	                ${category}
    Wait Until Element Is Visible       //div[@class="main-container-two"]//h1[contains(text(),"${shop_category}")]
    Scroll Element Into View            ${product}
    Click Element    	                ${product}
    Wait Until Element Is Visible       //h1[contains(text(),"Product details ")]
    #Wait Until Element Is Visible       //h4[contains(text(),"${product_name}")]
    Click Add to cart
    Wait Until Element Is Visible       //div[@class="item-basket"]//p[contains(text(),"Added to basket")]

Clic See More categories
    ${see more} =    Set Variable    //h3[contains(text(),"Shop categories")]/..//a[contains(text(),"see more")]
    Wait Until Element Is Visible    ${see more}
    Click Element                    ${see more}
    Wait Until Element Is Visible    //div[@class="main-container-two"]//h1[contains(text(),"Shop Categories")]/..//li[contains(text(),"Shop Categories")]
