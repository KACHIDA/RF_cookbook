*** Settings ***
Documentation       Program to demonstrate how to implement opencv integration

Library             RequestsLibrary


*** Tasks ***
TC1 - Get Request
    Create Session    google    http://www.google.com
    ${response}=    Get Request    google    /
    Should Be Equal As Strings    ${response.status_code}    200

TC2 - Post Request
    Create Session    uri    http://reqres.in
    ${data}=    Create Dictionary    email=kachida@test.com    password=fuji
    ${resp}=    Post Request    uri    /api/register    data=${data}
    Log    ${resp}
    Should Be Equal As Strings    ${resp.status_code}    200
