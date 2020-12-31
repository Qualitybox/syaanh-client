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

Check pop-up not visible
    [Arguments]    ${title}
    Wait Until Element Is Not Visible    //div[contains(text(), "${title}")]   

Check error message
    [Arguments]    ${msg}
    Wait Until Element Is Visible    //span//strong[contains(text(),"${msg}")]

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
    Scroll Element Into View   	     //div[contains(text(),"Select a service")]
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
    ${login} =    Set Variable       //span[@class="nav-link-login"]
    #//div[@id="nav_lang_link"]/../span[contains(text(),"Login")]
    Wait Until Element Is Visible    ${login}    20s
    Click Element                    ${login}
    
Fill up input form
    [Arguments]                              ${Fill_Data}
    FOR                                      ${element}                                  IN                                  @{Fill_Data}
    \                                        Fill input field           ${element}        ${Fill_Data}[${element}]
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
    Wait Until Element Is Visible    ${pop-up}    timeout=10
    
Check notifications
   [Arguments]    ${Notifications}
    Click Element    //div[@class="user-nots-icon notification_no"]    
    Wait Until Element Is Visible    //div[@class='show']/div    
User profile
    [Arguments]    ${profile}  
    Click Element    //a[@id='user_options']
    Wait Until Element Is Visible    //div[@class="nav-link-user-div show"]/div    
    #Element Should Be Visible         //div//a[contains(text(), 'My profile')]  
    
My profil
    Click Element        //a[@id='user_options']
    Click element           //div[@class="nav-link-user-div show"]/div/a
    Element Should Be Visible    //img[@id="user-img"]    

Provider register
    Click Element        //a[@id='user_options']    
    Click Element        //div[@class="nav-link-user-div show"]/div/a[2]    
    Wait Until Element Is Visible     //div[@class="provider-continue-butt"]    
    
Log Out 
    Click Element      //a[@id='user_options']     
    Click Element      //div[@class="nav-link-user-div show"]/div/a[3]
    Wait Until Element Is Visible     //span[@class="nav-link-login"]        
    
Change language 
    [Arguments]    ${Arabic}
    Click Element        id:for_lang_drop     
    Click Element      //a[@class="dropdown-item" and @href="https://dev.syaanh.com/ar"] 
    Wait Until Element Is Visible     //div[2]//a[contains(text(), "صيانة")]    

Check cart
   # [Arguments]    ${SyCart}
    Click Element    //*[@class="basket-items_count"]
    Wait Until Element Is Visible    //*[@class="main-container-two"]/h1       5s
    Wait Until Element Is Visible    //*[@class="main-container"]        5s
    Click Element    //*[@class="cart-buttons_block"]/a 
    Wait Until Element Is Visible    //*[@class="order-block"]    
    Element Should Be Visible    //*[contains(text(), "Address type")]    
    Element Should Be Visible    //*[@class="ordered-items_table"]    
    
      
See more
    [Arguments]     ${ShopCat}
    Click Element    //a[@class="see-more_link"]
    #Wait Until Element Is Visible     //h1[@class="shop-categories__title shop__title mobile-none"]
    Element Should Be Visible    //div//h1[contains(text(), "${ShopCat}")]   
    Get Location
    
About page
    [Arguments]    ${About}
    Scroll Element Into View        //div[@class="reserved"]/span
    Click Element      //div[@class="syaanh-links"]/div/a[5]
    Get Location            
    #Element Should Be Visible    //div//div[contains(text(), 'About Syaanh')]    
    Wait Until Element Is Visible    //div[@class="about-header"]    
    
Contact Us 
    [Arguments]    ${ContactUs}
    Scroll Element Into View    //div[@class="reserved"]/span
    Click Element        //div[@class="syaanh-links"]/div/a[3]
    Get Location
    Wait Until Element Is Visible        //*[@class="size_change"]
    
OurPrices 
    [Arguments]    ${vu}
    Scroll Element Into View    //div[@class="reserved"]/span
    Click Element    //div[@class="syaanh-links"]/div/a[6]
    Wait Until Element Is Visible        //div[@class="col-prices-1"]
    Get Title   
    
Shop Group
    [Arguments]        ${HomeApp}
    #//*[contains(@class,"shop-categories_row")]//*[contains(@href,"appliances")]
    Click Element        //h6[contains(text(), 'Home Appliances')]
    Element Should Be Visible    //span[contains(text(), "Small Appliances")]    
    Wait Until Element Is Visible    //div[@class="shop-filters_content"]        
    Scroll Element Into View         //ul//li[1][@class="active"]
    Click Element    //a[@class="page-link next"]    
    
Cancel Deleting Product from cart screen 
    Click Element    //*[@class="basket-items_count"]
    Wait Until Element Is Visible    //*[@class="main-container-two"]/h1       5s
    Click Element    //*[@data-cookieid="3"]/img    
    Wait Until Element Is Visible    //*[@id="remove_from_card"]//div[@class="modal-content login-modal-content"]    
    Click Element    //*[@class="remove_from_card_close"]/span  
    
    
Verify plus and minus button
    Click Element    //*[@class="basket-items_count"]
    Wait Until Element Is Visible    //*[@class="main-container-two"]/h1       4s
    ${var1} =  Get Text    //*[@class="product-price product-price-total_1"]
    Double Click Element    //*[@data-plus-id="1"]    
    Reload Page
    ${var2} =  Get Text    //*[@class="product-price product-price-total_1"]
    Should Not Be Equal     ${var1}     ${var2}    
    Double Click Element    //*[@data-minus-id="1"]
    Reload Page
    ${var3} =  Get Text    //*[@class="product-price product-price-total_1"]
    Should Not Be Equal     ${var2}     ${var3}    
    #Should Be Equal    ${var1}    ${var3}    

Check My Order 
    Click Element    //*[@class="orderPosition"]
    Element Should Be Visible    //*[contains(text(), "My orders ")]
    Element Should Be Visible    //*[contains(text(), "Completed")]
    ${var0}=    Get Text    //*[contains(@href, "completed")]
    [Return]    ${var0}
    Element Should Be Visible    //*[contains(@href, "shop")]   
    #Element Should Contain
        #//*[contains(text(),"Active")]
    
Active Orders
    Click Element    //*[@class="orderPosition"]    
    Element Should Be Visible    //*[contains(text(), "Open")]    
    
Completed orders 
    Click Element    //*[@class="orderPosition"]    
    Click Element     //*[@class="my-orders-info"]/div/ul/li[2]/a    
    Element Should Be Visible    //span[contains(text(), 'Completed')]    

Shop Orders
    Click Element    //*[@class="orderPosition"]    
    Click Element    //*[@class="my-orders-info"]/div/ul/li[3]/a
    Wait Until Element Is Visible    //*[@class="ordersArContentWithImg"]            
    
Cancel Order
    Click Element    //*[@class="orderPosition"]    
    Click Element    //*[@class="cancel-service-button"]    
    Wait Until Element Is Visible    //*[@id="not_completed_order"]//div[2]/div     
    Click Element    //*[@class="col-reasons"]//div[3]    
    Click Element    //*[@id="serviceCancelConfirm"]    
    Wait Until Element Is Not Visible    //*[@id="not_completed_order"]//div[2]/div     
Report Order 
    [Arguments]    ${text}
    Click Element    //*[@class="orderPosition"]    
    Click Element    //*[@class="report-service-button"]
    Wait Until Element Is Visible    //*[@class="rate-service-header"]    
    Input Text    //*[@id="reportTextbox"]    ${text}
    Click Element    //*[@class="row"]/a                
