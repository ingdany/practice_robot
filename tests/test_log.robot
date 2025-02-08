*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary

*** Variables ***


*** Test Cases ***
Log Example
    # Log    This is a log message
    # Log To Console    This message appears in the console
    # Log    Another log message with a level    level=WARN
    # Custom Logging Example    $message=Test Message
    Log    Starting debug logging    level=DEBUG
    ${status}    Run Keyword And Return Status    Click Button    non_existent_button
    Log    Debugging completed    level=DEBUG

*** Keywords ***
Custom Logging Example
    [Arguments]    ${message}
    Log    Custom log: ${message}
    Log To Console    [INFO] Custom console message: ${message}