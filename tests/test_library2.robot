*** Settings ***
Library    MyLibrary2.py

*** Test Cases ***
Custom Keyword Test
    ${greeting}    Greet User    Daniel    
    ${greeting_str}    Convert To String    ${greeting}
    Should Be Equal    ${greeting_str}    Hello, Daniel!

    ${result}    Add Numbers    5    3
    ${result_str}    Convert To String    ${result}
    Should Be Equal    ${result_str}    8