*** Settings ***
Library     SeleniumLibrary
#Resource    ../Xpath/Login.robot
#Resource    ../Keyword/browser.robot
Resource    ../Xpath/event.robot

*** Variables ***

*** Keywords ***
Click Menu Event
    Wait Until Element Is Visible    ${menuEvent}       timeout=30s
    Click Element    ${menuEvent}
Verify Page Event
    Wait Until Element Is Visible    ${verifyEvent}     timeout=30s
    Page Should Contain Element      ${verifyEvent}
Click Button Cari
    Click Element       ${btnCari}
Search Pencarian by Nama Kegiatan
    Go To    http://pmrms.greatpmo.com/activity/event
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          Automation Testing
Verify Nama Kegiatan
    Wait Until Element Is Visible       ${verifyNamaEvent}  timeout=30s
    Page Should Contain Element         ${verifyNamaEvent}
Search Pencarian No Data
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          testing123
Verify No Data
    Wait Until Element Is Visible       ${noData}   timeout=30s
    Page Should Contain Element         ${noData}
Click Button Lihat Event
    Wait Until Element Is Visible    ${lihatDetail}     timeout=30s
    Execute JavaScript              document.evaluate("${lihatDetail}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element                       ${lihatDetail}
Verify Page Detail Event
    Wait Until Element Is Visible       ${verifyDetail}     timeout=30s
    Page Should Contain Element         ${verifyDetail}
Click Button Kembali
    Click Element                       ${btnKembali}
Click Button Keluar
    Execute JavaScript              document.evaluate("${btnKeluar}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

Click Tab Calender Event
    Wait Until Element Is Visible    ${kalender}      timeout=30s
    Click Element    ${kalender}
Verify Page Calender Event
    Wait Until Element Is Visible    ${verifyJadwal}      timeout=30s
    Page Should Contain Element    ${verifyJadwal}
Click Tab Laporan Event
    Wait Until Element Is Visible    ${laporanEvent}    timeout=30s
    Click Element    ${laporanEvent}
Click Button Laporan Event
    Wait Until Element Is Visible    ${btnLaporanEvent}     timeout=30s
    Click Element    ${btnLaporanEvent}
Verify Page Detail Laporan Event
    Wait Until Element Is Visible    ${verifyDetailLaporanEvent}    timeout=30s
    Page Should Contain Element    ${verifyDetailLaporanEvent}
Click Button History
    Click Element    ${btnHistory}
Verify Page History
    Wait Until Element Is Visible    ${verifyHistoryCatatan}        timeout=30s
    Page Should Contain Element    ${verifyHistoryCatatan}
Click Button Close
    Click Element    ${btnClose}
