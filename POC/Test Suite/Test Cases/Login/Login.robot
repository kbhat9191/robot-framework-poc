*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://craftsilicon.hawkhr.com/    # url to open web page
${browser}        chrome    # chrome browser
${email}          karthik.bhat@craftsilicon.com    # username
${password}       Myname@2376    # password

*** Test Cases ***
Login To Hawk HR - Dashboard page
    [Documentation]    1. login to hawk hr with valid email and password.
    ...    2. click on Sign in button.
    ...
    ...    Expected Result: User should be landed to dashboard page.
    [Tags]    sanity
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id:inputUser    ${email}
    Input Password    id:inputPassword    ${password}
    Click Button    css:button[type='submit']
    Close Browser
    Log To Console    Test completed