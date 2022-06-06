*** Settings ***
Library     SeleniumLibrary
Resource    ../Xpath/monev.robot

*** Variables ***


*** Keywords ***
Click Monev Output Target
    Go To    http://pmrms.greatpmo.com/monev/list-monev/output
    Wait Until Element Is Visible    ${pageMonev}   timeout=30s
    Page Should Contain Element    ${pageMonev}

Click Monev Longterm target
    Go To    http://pmrms.greatpmo.com/monev/monev-longterm/Longterm
    Wait Until Element Is Visible    ${pageLongTerm}
    Page Should Contain Element    ${pageLongTerm}
Click View Longterm Target
    Click Element    ${viewLongTerm}
Click Close View Longterm
    Click Element    ${closeLongTerm}
