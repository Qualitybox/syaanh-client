*** Settings ***
Library                      SeleniumLibrary
Library                      Collections
Library                      OperatingSystem
Variables                    ${EXECDIR}/GlobalProperties.py

*** Keywords ***

Start Application
    Open Browser                        ${Website_URL}                   ${BROWSER}
    Set Window Size                     1600                             1200
    Set Selenium Speed                  ${DELAY}
    
Teardown tests
    Capture Page Screenshot
    Close All Browsers

Check pop-up
    [Arguments]    ${title}
    Element Should Be Visible    //div//h3[contains(text(), "${title}")]    

Close pop-up
    [Arguments]    ${title}
    Element Should Be Visible    //div//h3[contains(text(), "${title}")]  
    Click Element                //div//h3[contains(text(), "${title}")]//..//button
    Wait Until Element Is Not Visible   //div//h3[contains(text(), "${title}")]  
    
Fill up form Login
    [Arguments]    ${mobile}    ${password}
    Wait Until Element Is Visible    //div[contains(text(), "Login")]
    Input Text    //input[@id="mobile_or_email"]    ${mobile}
    Input Text    //input[@id="login_password"]    ${password}
    
Click service
    [Arguments]    ${service}
    Wait Until Element Is Visible    //span[contains(text(),"${service}")]
    Click Element                    //span[contains(text(),"${service}")]
    Wait Until Element Is Visible    //div[contains(text(),"Create order")]
   
Select an area
     [Arguments]    ${area}
     Wait Until Element Is Visible    //span[@id="area_value"]
     Click Element                    //span[@id="area_value"]
     Wait Until Element Is Visible    //div[@class="choose-area-header"]//span[contains(text(),"Select an area")]
     Click Element                    //label[contains(text(),"${area}")]
     Click Element                     //div[@class="create-area-continue"]//span
     Wait Until Element Is Not Visible     //div[@class="choose-area-header"]//span[contains(text(),"Select an area")]
     
Next step title
    [Arguments]    ${title}
    Wait Until Element Is Visible    //div//span[contains(text(),"${title}")]

Fill up first step to create order
    [Arguments]    ${area}    ${requested service}    ${type}
    Select an area                   ${area}
    Click Element                    //label[contains(text(),"${requested service}")]
    Click Element                    //label[contains(text(),"${type}")]
Cocher case a cocher
    [Arguments]    ${attribute}
    Wait Until Element Is Visible    //label[contains(text(),"${attribute}")]
    Click Element                    //label[contains(text(),"${attribute}")]
Fill up third step to create order
    [Arguments]    ${Nationality}    ${Sex}    ${Required_materials}
    Click Element                    //label[contains(text(),"${Nationality}")]
    Click Element                    //label[contains(text(),"${Sex}")]
    Click Element                    //label[contains(text(),"${Required_materials}")]   
Input description
    [Arguments]    ${value}
    ${description} =     Set Variable       //textarea[@data-title="Request description"]
    Wait Until Element Is Visible    ${description}
    Input Text    ${description}   ${value}  
    
Verification information last step
    [Arguments]    ${type}    ${Nationality}    ${Sex}
    Wait Until Element Is Visible    ${type}
    Wait Until Element Is Visible    ${Nationality}
    Wait Until Element Is Visible    ${Sex}
    
Check my orders
    ${titel} =        Set Variable    //div[@class="my-orders-title"]//span[contains(text(),"My orders")]
    ${my_orders} =    Set Variable    //div[@class="header-orders-link"]//a[contains(text(),"My orders")]
    Wait Until Element Is Visible     ${my_orders}
    Click Element                     ${my_orders}
    Wait Until Element Is Visible     ${titel}