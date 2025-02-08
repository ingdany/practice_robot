*** Settings ***

Library    SeleniumLibrary
Test Template    Login Test Template

*** Test Cases ***
Admin Login
    standard_user    secret_sauce
User Login
    locket_out_user    secret_sauce

*** Keywords ***
Login Test Template
    [Arguments]    ${username}    ${password}
    Open Browser    https://www.saucedemo.com/v1/index.html    chrome
    Maximize Browser Window
    Input Text      id=user-name        ${username}
    Input Text      id=password         ${password}
    Click Button    id=login-button
    Page Should Contain    Products