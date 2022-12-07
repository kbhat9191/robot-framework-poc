*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://craftsilicon.hawkhr.com/    # url to open web page
${browser}        chrome    # chrome browser
${email}          karthik.bhat@craftsilicon.com    # username
${password}       Myname@2376    # password

*** Test Cases ***
Access Dashboard Attendence
    [Documentation]    1. login to hawk hr with valid email and password.
    ...    2. click on sign in button
    ...    3. On dashboard page, click on Attendence link.
    ...    4. click on previous and next controls to see the attendence in weekly.
    ...
    ...    Expected Result:
    ...    Should be able to access dashboard page and go and navigate the attendence section controls like previous and next buttons.

    [Tags]    smoke
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id:inputUser    ${email}
    Input Password    id:inputPassword    ${password}
    Click Button    css:button[type='submit']
    Set Browser Implicit Wait    5
    Click Element    xpath://span[normalize-space()='Attendance']
    Set Browser Implicit Wait    10
    Click Element    xpath://i[@title='Next']
    Set Browser Implicit Wait    10
    Click Element    xpath://i[@title='Previous']
    Set Browser Implicit Wait    10
    CLose Browser
    Log To Console    Test completed