*** Settings ***
Library    OperatingSystem
Library    JSONLibrary

*** Variables ***


*** Test Cases ***
Read API Key from File
    ${data}    Load JSON From File    secrets.json
    Log To Console    ${data}
    ${api_key}    Get Value From Json    ${data}    api_key
    Log To Console    ${api_key}    level=WARN

*** Keywords ***