*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***

*** Test Cases ***
Continue For Example
    FOR    ${i}    IN RANGE    6
        Run Keyword If    ${i} == 3    Continue For Loop
        Log    Iteration ${i}
    END