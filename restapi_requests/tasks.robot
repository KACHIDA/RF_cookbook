*** Settings ***
Documentation       Program to demonstrate simple api outbound call using the python's request library

Library             Collections
Library             RequestsLibrary


*** Tasks ***
Get Request
    [Documentation]    Get Request call
    Create Session    jokes    https://api.chucknorris.io
    ${response}=    GET On Session    jokes    /jokes/random
    Log    ${response.json()}
    Should Be Equal As Strings    ${response.status_code}    200
    Dictionary Should Contain Key    ${response.json()}    url
    Log Dictionary    ${response.json()}
