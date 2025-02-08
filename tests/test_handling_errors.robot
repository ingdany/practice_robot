*** Settings ***

Library    SeleniumLibrary
Library    ../.venv/Lib/site-packages/robot/libraries/Telnet.py

*** Variables ***
${URL}    https://www.saucedemo.com/v1/index.html
&{users}    user_name=standard_user    password=secret_sauce


*** Test Cases ***
Login Test
    [Tags]    smoke
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Login Test    ${users}[user_name]    ${users}[password]

*** Keywords ***
Login Test
    [Arguments]    ${username}    ${password}
    Open Browser    https://www.saucedemo.com/v1/index.html    chrome
    Maximize Browser Window
    Input Text      id=user-name        ${username}
    Input Text      id=password         ${password}
    Run Keyword And Ignore Error    Click Button    id=login-button2
    Run Keyword And Ignore Error    Page Should Contain    Products