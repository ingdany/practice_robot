*** Settings ***
Library    SeleniumLibrary
Library    ../.venv/Lib/site-packages/robot/libraries/OperatingSystem.py

*** Variables ***
${url}    https://www.saucedemo.com/v1/index.html
${input_username}    id=user-name
${input_password}    id=password
${login_button}    id=login-button


*** Test Cases ***
Open Browser Session
    Open Page    ${url}
    Close Browser

*** Keywords ***
Open Page
    [Arguments]    ${url}
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Set Selenium Speed    0.2
    Wait Until Element Is Visible    ${input_username}
    Input Text    ${input_username}    standard_user
    Input Text    ${input_password}    secret_sauce
    Click Element    ${login_button}
    Wait Until Page Contains    Products    timeout=5s
    Page Should Contain    Products