*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}      https://craftsilicon.hawkhr.com/    # url to open web page
${browser}      chrome    # chrome browser
${email}        karthik.bhat@craftsilicon.com    # username
${password}     Myname@2376    # password
${name}     Rini Das Bhat
${relationship}     Spouse
${phoneno}      9886987049

*** Test Cases ***
Access Emergency page in Profile section
    [Tags]    smoke
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id:inputUser    ${email}
    Input Password    id:inputPassword    ${password}
    Click Button    css:button[type='submit']
    Set Browser Implicit Wait    5
    Click Element   xpath://i[@class='fa fa-chevron-down mb-lg-3 mb-xl-3 mt-3']
    Click Element   xpath://div[@class='dropdown-menu show']//a[@class='dropdown-item'][normalize-space()='Profile']
    Click Element   css:#liEmergencyDetails
    Input Text  xpath://input[@id='ECpersonalname']     ${name}
    Input Text  xpath://input[@id='ECrelationtype']     ${relationship}
    Input Text  xpath://input[@id='ECphone']    ${phoneno}
    Set Browser Implicit Wait    5
    Click Element    xpath://button[@id='btnEContactAdd']
    Close Browser
    Log To Console  Test completed successfully
