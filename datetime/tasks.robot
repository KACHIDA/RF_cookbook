*** Settings ***
Documentation       Program to demonstrate the use of the datetime library with robot framework

Library             DateTime


*** Variables ***
${unicode_release_date}     1991-10-01


*** Tasks ***
How much time passed since unicode1.0 is released
    ${current_date}=    Get Current Date
    ${time_passed_since_release}=    Subtract Date From Date
    ...    ${current_date}
    ...    ${unicode_release_date}    result_format=verbose
    Log    ${time_passed_since_release}

How many days and years passed since unicode1.0 was released
    ${current_date}=    Get Current Date
    ${time_passed_since_release}=    Subtract Date From Date
    ...    ${current_date}
    ...    ${unicode_release_date}    result_format=timedelta
    Log    ${time_passed_since_release.days}
    Log    ${time_passed_since_release.days / 365}
