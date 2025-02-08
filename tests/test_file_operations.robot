*** Settings ***
Library    OperatingSystem

*** Variables ***

*** Test Cases ***
File Operations Example
    Create File    testfile.txt    This is a test file.
    ${content}    Get File    testfile.txt
    Log    ${content}
    Remove File    testfile.txt