*** Settings ***
Library                      SeleniumLibrary
Library                      Collections
Library                      OperatingSystem
Library                      ${EXECDIR}/Utils/utils.py
Variables                    ${EXECDIR}/GlobalProperties.py
Variables                    Webelements/Common.py

*** Keywords ***

Start Application
    Open Browser                        ${Website_URL}                   ${BROWSER}
    Set Window Size                     1600                             1200
    Set Selenium Speed                  ${DELAY}

Teardown tests
    Capture Page Screenshot
    Close All Browsers

Handle Recommanded product popup
    Wait Until Element Is Visible             ${recommandedProductPopup}
    Click Element                                ${recommandedProductPopup_close}
    Wait Until Element Is Not Visible     ${recommandedProductPopup}

# Check pop-up not visible
    # [Arguments]    ${title}
    # Wait Until Element Is Not Visible    //div[contains(text(), "${title}")]

Check error message
    [Arguments]    ${msg}
    ${error_msg} =              Replace    ${error_msg}    ${msg}
    Wait Until Element Is Visible      ${error_msg}

Close pop-up
    [Arguments]    ${title}
    Element Should Be Visible    //div//h3[contains(text(), "${title}")]
    Click Element                //div//h3[contains(text(), "${title}")]//..//button
    Wait Until Element Is Not Visible   //div//h3[contains(text(), "${title}")]

Click service
    [Arguments]    ${service}
    Scroll Element Into View   	     //div[contains(text(),"Select a service")]
    Wait Until Element Is Visible    //span[contains(text(),"${service}")]
    Click Element                    //span[contains(text(),"${service}")]
    Wait Until Element Is Visible    //div[contains(text(),"Create order")]

Select an area
     [Arguments]    ${area}
     Wait Until Element Is Visible    //span[@id="area_value"]
     Click Element                    //span[@id="area_value"]
     Wait Until Element Is Visible    //div[@class="choose-area-header"]//span[contains(text(),"Select an area")]    timeout= 10
     Click Element                    //label[contains(text(),"${area}")]
     Click Element                     //div[@class="create-area-continue"]//span
     Wait Until Element Is Not Visible     //div[@class="choose-area-header"]//span[contains(text(),"Select an area")]


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

Check my orders
    ${titel} =        Set Variable    //div[@class="my-orders-title"]//span[contains(text(),"My orders")]
    ${my_orders} =    Set Variable    //div[@class="header-orders-link"]//a[contains(text(),"My orders")]
    Wait Until Element Is Visible     ${my_orders}
    Click Element                     ${my_orders}
    Wait Until Element Is Visible     ${titel}

Click button type
    [Arguments]    ${button_name}
    Wait Until Element Is Visible    //div//button//span[contains(text(),"${button_name}")]/..
    Click Button                     //div//button//span[contains(text(),"${button_name}")]/..


Click login
    ${login} =    Set Variable       //div/../span[contains(text(),"Login")]
    Wait Until Element Is Visible    ${login}
    Click Element                    ${login}

Fill up input form
    [Arguments]                              ${Fill_Data}
    FOR                                      ${element}                                  IN                                  @{Fill_Data}
                                             Fill input field           ${element}        ${Fill_Data}[${element}]
    END

Fill input field
    [Arguments]                              ${Champs}                                   ${Valeur}
    ${CheminChamp}=                          Set Variable                                //label[contains(text(),"${Champs}")]//..//input
    Input Text                               ${CheminChamp}                              ${Valeur}

Fill register input
    [Arguments]      ${champ}     ${Valeur}    ${id}
    ${CheminChamp}=                          Set Variable                                //div//label[contains(text(),"${champ}")]//..//input[@id="${id}"]
    Input Text                               ${CheminChamp}                              ${Valeur}

Click register link
    ${link} =    Set Variable       //div//a[contains(text(),"Register")]
    ${pop-up} =     Set Variable    //div[@class="register-header"][contains(text(),"Register")]
    Wait Until Element Is Visible       ${link}
    Click Element   	                ${link}
    Wait Until Element Is Visible       ${pop-up}

Close confirmation pop-up register
    [Arguments]    ${msg}
    ${pop-up} =    Set Variable   //div[@class="modal-content"]//div[contains(text()," ${msg}")]
    ${okButton} =    Set Variable   //div//button//span[contains(text(),"Ok")]
    Wait Until Element Is Visible    ${pop-up}    timeout=20

Open notification
    ${notification_icone} =    Set Variable        //a[@id="notifications"]
    Wait Until Element Is Visible      ${notification_icone}
    Click Element                      ${notification_icone}
    Wait Until Element Is Visible      //div[@class="dropdown-menu dropdown-notification show"]
Verify notification not existe 
    ${notification_icone} =    Set Variable        //a[@id="notifications"]
    Wait Until Page Does Not Contain    text${notification_icone}    
Change language
    [Arguments]    ${language}
    Wait Until Element Is Visible    //a[@id="for_lang_drop"]
    Click Element                    //a[@id="for_lang_drop"]
    Wait Until Element Is Visible    //div[@id="nav_lang_link"]
    Click Element                    //div[@id="nav_lang_link"]//a[contains(text(),"${language}")]
    Wait Until Element Is Visible    //a[@id="for_lang_drop"][contains(text(),"${language}")]

