*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.saucedemo.com/v1/index.html
&{users}    user_name=standard_user    password=secret_sauce


*** Test Cases ***
Login Test    
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Input Text      id=user-name        ${users}[user_name]
    Input Text      id=password         ${users}[password]
    Click Button    id=login-button
    Page Should Contain    Products

*** Keywords ***
Login Test
    [Arguments]    ${username}    ${password}
    Open Browser    https://www.saucedemo.com/v1/index.html    chrome
    Maximize Browser Window
    Input Text      id=user-name        ${username}
    Input Text      id=password         ${password}
    Click Button    id=login-button
    Page Should Contain    Products