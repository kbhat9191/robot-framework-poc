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
Access Travel Page
    [Tags]    smoke
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id:inputUser    ${email}
    Input Password    id:inputPassword    ${password}
    Click Button    css:button[type='submit']
    Set Browser Implicit Wait    5
    Click Element   xpath://span[normalize-space()='Travel']
    Click Element   xpath://a[@class='menu-link active']//span[@class='menu-text']
    Click Element   id:selectedstatus
    Execute Javascript  window.scrollto(0,1500)
