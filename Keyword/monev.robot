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
Click View Target
    Wait Until Element Is Visible    ${viewLongTerm}
    Click Element    ${viewLongTerm}
Click Close View
    Wait Until Element Is Visible    ${closeLongTerm}
    Click Element    ${closeLongTerm}
Click Button Edit
    Wait Until Element Is Visible    ${btnEdit}
    Click Element    ${btnEdit}
Click Button Simpan
    Wait Until Element Is Visible    ${btnSimpan}
    Execute JavaScript              document.evaluate("${btnSimpan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Click Monev Midterm Output Target
    Go To    http://pmrms.greatpmo.com/monev/monev-midterm/Midterm
    Wait Until Element Is Visible    ${pageMonev}   timeout=30s
    Page Should Contain Element    ${pageMonev}
Click Monev Intermediate Output Target
    Go To    http://pmrms.greatpmo.com/monev/monev-intermediate/intermediate
    Wait Until Element Is Visible    ${pageMonev}   timeout=30s
    Page Should Contain Element    ${pageMonev}


