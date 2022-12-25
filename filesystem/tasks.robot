*** Settings ***
Documentation       Program to demonstrate the file system methods

Library             OperatingSystem


*** Tasks ***
List Directory Contents
    @{dictList}=    List Directory    ${TEMPDIR}
    @{filesList}=    List Files In Directory    ${TEMPDIR}
    @{directoryList}=    List Directories In Directory    ${TEMPDIR}
    ${countItems}=    Count Items In Directory    ${TEMPDIR}
    ${countFiles}=    Count Files In Directory    ${TEMPDIR}
    ${countDirectories}=    Count Directories In Directory    ${TEMPDIR}
    FOR    ${directories}    IN    @{dictList}
        Log    ${directories}
    END
