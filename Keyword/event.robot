*** Settings ***
Library     SeleniumLibrary
#Resource    ../Xpath/Login.robot
#Resource    ../Keyword/browser.robot
Resource    ../Xpath/event.robot

*** Variables ***

*** Keywords ***
Click Menu Event
    Wait Until Element Is Visible    ${menuEvent}
    Click Element    ${menuEvent}
Verify Page Event
    Wait Until Element Is Visible    ${verifyEvent}
    Page Should Contain Element      ${verifyEvent}
Click Button Cari
    Click Element       ${btnCari}
Search Pencarian by Nama Kegiatan
    Go To    http://pmrms.greatpmo.com/activity/event
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          Kegiatan baru 1
Verify Nama Kegiatan
    Wait Until Element Is Visible       ${verifyNamaEvent}
    Page Should Contain Element         ${verifyNamaEvent}
Search Pencarian No Data
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          testing123
Verify No Data
    Wait Until Element Is Visible       ${noData}
    Page Should Contain Element         ${noData}
Click Button Lihat Event
    Wait Until Element Is Visible    ${lihatDetail}     timeout=30s
    Click Element                       ${lihatDetail}
Verify Page Detail Event
    Wait Until Element Is Visible       ${verifyDetail}
    Page Should Contain Element         ${verifyDetail}
Click Button Kembali
    Click Element                       ${btnKembali}
Click Button Keluar
    Execute JavaScript              document.evaluate("${btnKeluar}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
