*** Settings ***

Library    SeleniumLibrary
Library    ../.venv/Lib/site-packages/robot/libraries/Telnet.py

*** Variables ***
${URL}    https://www.saucedemo.com/v1/index.html
${users}    { user_name: super_user, password: secret_sauce }


*** Test Cases ***
Login Test    
    @{users}    Create List    admin    user1    user2
    FOR    ${user}    IN    @{users}
        Log    User: ${user}
        Log To Console    message=User: ${user}
    END

*** Keywords ***