*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://craftsilicon.hawkhr.com/    # url to open web page
${browser}        chrome    # chrome browser
${email}          karthik.bhat@craftsilicon.com    # username
${password}       Myname@2376    # password

*** Test Cases ***
Access Profile Page
    [Documentation]    1. login to hawk hr with valid email and password.
    ...    2. click on sign in button
    ...    3. On dashboard page, click on Profile link
    ...    4. Check all profile related info.
    ...
    ...    Expected Result:
    ...    Should able to view the profile page.
    [Tags]    smoke
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id:inputUser    ${email}
    Input Password    id:inputPassword    ${password}
    Click Button    css:button[type='submit']
    Set Browser Implicit Wait    5
    Click Element   xpath://i[@class='fa fa-chevron-down mb-lg-3 mb-xl-3 mt-3']
    Click Element   xpath://div[@class='dropdown-menu show']//a[@class='dropdown-item'][normalize-space()='Profile']
    Close Browser
    Log To Console  Test completed successfully
