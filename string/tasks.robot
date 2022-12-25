*** Settings ***
Documentation       program to demonstrate the usage of the string functions in the robot framework

Library             String


*** Tasks ***
Check Lower case keywords
    [Documentation]    Testing the lower case functions
    ${name}=    Convert To Lower Case    KANNAPPAN CHIDAMBARAM
    Should Be Equal    ${name}    kannappan chidambaram
    Should Be Lower Case    ${name}

Check Title case keywords
    [Documentation]    Testing the title case functions
    ${name}=    Convert To Title Case    kannappan chidambaram
    Should Be Equal    ${name}    Kannappan Chidambaram
    Should Be Title Case    ${name}

Check Upper case keywords
    [Documentation]    Testing the upper case functions
    ${name}=    Convert To Upper Case    Kannappan Chidambaram
    Should Be Equal    ${name}    KANNAPPAN CHIDAMBARAM
    Should Be Upper Case    ${name}

Check Other String keywords
    [Documentation]    Testing the other string functions
    ${name}=    Replace String    Nigel Hirald    Nigel    Rubeus
    Should Be Equal    ${name}    Rubeus Hirald
    Should Be String    ${name}
    @{characters}=    Split String To Characters    ${name}
