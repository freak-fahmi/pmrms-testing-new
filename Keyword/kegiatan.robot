*** Settings ***
Library     SeleniumLibrary
#Resource    ../Xpath/Login.robot
#Resource    ../Keyword/browser.robot
Resource    ../Xpath/kegiatan.robot
#Resource    ../Keyword/awp.robot

*** Variables ***

*** Keywords ***
Click Menu Kegiatan
    Wait Until Element Is Visible    ${menuKegiatan}    timeout=30s
    Click Element    ${menuKegiatan}
Verify Page Kegiatan
    Wait Until Element Is Visible    ${verifyKegiatan}      timeout=30s
    Page Should Contain Element      ${verifyKegiatan}
Click Button Cari
    Click Element       ${btnCari}
Search Pencarian by Nama Kegiatan
    Go To    http://pmrms.greatpmo.com/implement/kegiatan
    Wait Until Element Is Visible    ${inputCari}       timeout=30s
    Input Text    ${inputCari}          Automation Testing
Verify Nama Kegiatan
    Wait Until Element Is Visible       ${verifyNamaKegiatan}
    Page Should Contain Element         ${verifyNamaKegiatan}
Filter by Tahun
    Wait Until Element Is Visible    ${filterTahun}     timeout=30s
    Click Element    ${filterTahun}
    Click Element    ${pilihTahun}
Search Pencarian No Data
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          testing123
Verify No Data
    Wait Until Element Is Visible       ${noData}
    Page Should Contain Element         ${noData}
Click Button Lihat Kegiatan
    Wait Until Element Is Visible     ${lihatDetail}
    Click Element                       ${lihatDetail}
Click Sorting Status
    Click Element    ${sorting}
Click Sorting Status Asc
    Click Element    ${sorting}
    Sleep    3s
    Click Element    ${sorting}

Click Button Lihat Kegiatan New
    Sleep    3s
    Wait Until Element Is Visible    ${btnLihatDetailNew}   timeout=30s
#    Execute JavaScript              document.evaluate("${btnLihatDetailNew}",
#                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#                                    ...    snapshotItem(0).click();

    Click Element                       ${btnLihatDetailNew}
Click Button Lihat Kegiatan Perencanaan
    Sleep    3s
    Wait Until Element Is Visible       ${btnLihatDetailRencana}    timeout=30s
    Click Element                       ${btnLihatDetailRencana}
Click Button Lihat Menunggu Persetujuan
    Sleep    3s
    Wait Until Element Is Visible       ${btnLihatPersetujuan}  timeout=30s
    Click Element                       ${btnLihatPersetujuan}
Verify Page Detail Kegiatan
    Wait Until Element Is Visible       ${verifyDetail}
    Page Should Contain Element         ${verifyDetail}
Click Button keluar
     Wait Until Element Is Visible    ${btnKeluar}      timeout=30s
     Execute JavaScript              document.evaluate("${btnKeluar}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${btnKeluar}
Click Button Kembali
#    Click Element                       ${btnKembali}
    Execute JavaScript              document.evaluate("${btnKembali}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Click Button Implementasi Kegiatan
    Wait Until Element Is Visible    ${btnImplementasiKegiatan}     timeout=30s
    Execute JavaScript              document.evaluate("${btnImplementasiKegiatan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${btnImplementasiKegiatan}
Input Data Umum
    Wait Until Element Is Visible    ${tbhKodePOK}      timeout=30s
#    Click Element    ${tbhKodePOK}
    Execute JavaScript              document.evaluate("${tbhKodePOK}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Wait Until Element Is Visible    ${pilihKodeAkun}       timeout=30s
    Execute JavaScript              document.evaluate("${pilihKodeAkun}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Input Text    ${budgetPOK}      100000

#    Click Element    ${btnLanjut}
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    3s
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Data Kegiatan
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Data Pelaksanaan
    Wait Until Element Is Visible    ${inputAsumsi}
    Input Text    ${inputAsumsi}    Automation Testing
    Input Text    ${inputResiko}    Automation testing
    Execute JavaScript              document.evaluate("${angkapotensi}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${angkapotensi}
    Execute JavaScript              document.evaluate("${angkadampak}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${angkadampak}
Click Button Simpan
    Wait Until Element Is Visible    ${btnsimpan}
    Execute JavaScript              document.evaluate("${btnsimpan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
User Logout
    Click Element    ${profile} 
    Click Element    ${btnLogout}
Coordinator Quality Entry
    Wait Until Element Is Visible    ${qualityEntry}
    Execute JavaScript              document.evaluate("${qualityEntry}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Click Element    ${entry1}
    Click Element    ${entry2}
    Click Element    ${entry3}
    Click Element    ${entry4}
    Click Element    ${entry5}
    Click Element    ${entry6}
    Click Element    ${entry7}
    Click Element    ${simpanQuality}
    
Click Button Setuju
    Wait Until Element Is Visible    ${btnSetuju}
    Execute JavaScript              document.evaluate("${btnSetuju}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Catatan
    Input Text    ${catatan}        automation testing
Input Catatan Setuju
    Input Text    ${catatanSetuju}      automation testing
Click Button Kirim
    Execute JavaScript              document.evaluate("${btnKirim}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

