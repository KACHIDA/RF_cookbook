*** Settings ***
Documentation       Program to demonstrate the usage of the variable prefixes in the robot framework

Library             Collections
Library             String


*** Variables ***
${recipe}       Recipe 2.1 for demonstrating variable prefixes
${level}        beginner


*** Test Cases ***
Lists Lists Lists
    ${list} =    Create List    a    b    c
    @{list} =    Set Variable    a    b    c
    Eat one list    ${list}
    Eat many values    @{list}
    Eat many values    d    e    @{list}
    ${a} =    Create List    a
    @{bc} =    Set Variable    b    c
    Log ABC    ${a}    @{bc}
    Testing List of Numbers
    Testing List of Letters
    Dictionary Testing


*** Keywords ***
Eat one list
    [Arguments]    ${li}
    Log Many    @{li}
    Log    ${li}

Eat many values
    [Arguments]    @{li}
    Log Many    @{li}
    Log    ${li}

Log ABC
    [Arguments]    ${a}    @{bc}
    Log    ${a}
    Log    ${bc}[0]
    Log    ${bc}[1]

Testing List of Numbers
    ${randlist} =    Evaluate    random.sample(range(1,20),5)    modules=random
    ${itemcount} =    Get Length    ${randlist}
    ${numbers} =    Create List    @{randlist}
    Log List    ${numbers}
    Sort List    ${numbers}
    Log List    ${numbers}

Testing List of Letters
    ${letters} =    Create List    a    b    c
    ${matches} =    Count Values In List    ${letters}    c
    Log List    ${letters}
    List Should Contain Value    ${letters}    b
    List Should Not Contain Value    ${letters}    z
    Remove Values From List    ${letters}    a    c
    Log List    ${letters}
    Append To List    ${letters}    i    y    t    x    z
    Log List    ${letters}
    Sort List    ${letters}
    Log List    ${letters}

Dictionary Testing
    &{dict1} =    Create Dictionary    team=chennai super kings
    &{dict2} =    Create Dictionary    stadium=chepauk
    &{dict} =    Create Dictionary    &{dict1}    &{dict2}    shortname=csk
    Should Be True    ${dict} == {'team':'chennai super kings', 'stadium':'chepauk', 'shortname':'csk' }
    Should Be Equal    ${dict.team}    chennai super kings
    Should Be Equal    ${dict.stadium}    chepauk
    Should Not Be Equal    ${dict.shortname}    MI
    Dictionary Should Contain Key    ${dict}    team
    Dictionary Should Contain Value    ${dict}    chennai super kings
    ${val} =    Pop From Dictionary    ${dict}    shortname
    Log    ${dict}
    Log Many    &{dict}
    Log Dictionary    ${dict}
