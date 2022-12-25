*** Settings ***
Documentation       Template robot main suite.


*** Variables ***
${message}      sample


*** Tasks ***
Send Message To Console
    Log Variables
    Log    simple
    Log To Console    SampleMessage,

Testing For IN Syntax
    [Documentation]    Basic For in Syntax
    FOR    ${weekday}    IN    Monday    tuesday    wednesday
        Log To Console    ${weekday}    console=yes
    END

TEST FOR IN Range Syntax
    [Documentation]    Basic For in range Syntax
    FOR    ${i}    IN RANGE    10
        Log To Console    ${i}
    END

TEST FOR IN RANGE EXIT Syntax
    [Documentation]    Basic For in range Syntax with exit condition
    FOR    ${element}    IN RANGE    999999
        IF    ${element}==20            BREAK
        Log To Console    ${element}
    END
