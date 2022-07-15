*** Settings ***
Library     SeleniumLibrary
#Library    FakerLibrary
Resource    ../Xpath/daftartugas.robot

*** Variables ***

*** Keywords ***
Click Menu Profile
    Wait Until Element Is Visible    ${profileButton}       timeout=30s
    Click Element                    ${profileButton}
Click Button Daftar Tugas
    Click Element                    ${daftarTugas}
Verify Page Daftar Tugas
    Wait Until Element Is Visible    ${verifyDaftarTugas}       timeout=30s
    Page Should Contain Element      ${verifyDaftarTugas}
Click Tab Penugasan
    Wait Until Element Is Visible    ${tabPenugasan}    timeout=30s
    Click Element    ${tabPenugasan}
Click Kalender Event
    wait until element is visible    ${kalenderEvent}   timeout=30s
    click element    ${kalenderEvent}
Click Button Buat Tugas
    Click Element    ${btnBuatTugas}
Verify Element Page Buat Tugas
    Wait Until Element Is Visible    ${verifyTambahTugas}   timeout=30s
    Page Should Contain Element      ${verifyTambahTugas}
Pilih Nama Penerima Tugas
    Wait Until Element Is Visible    ${pilihPenerimaTugas}
    Click Element    ${pilihPenerimaTugas}
    Click Element    ${AbdulRaup}
    Click Element    ${AbdulRaup}
Input Judul Tugas
    Input Text    ${inputJudulTugas}    Tugas Test Automation
Input Tanggal Tugas
    Input Text    ${inputTanggal}       2022-03-10
Input Deskripsi Tugas
    Input Text    ${descTugas}   Tugas Membuat Test Automation
    Sleep    5s
Pilih PDO
    Wait Until Element Is Visible    ${pilihPDO}
    Execute JavaScript              document.evaluate("${pilihPDO}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Wait Until Element Is Visible    ${pilihPDO-1}
    Execute JavaScript              document.evaluate("${pilihPDO-1}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${pilihPDO-1}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${pilihPDO1}

Pilih IRI
    Sleep    5s
    Click Element    ${pilihIRI}
    Click Element    ${pilihIRI1}
    Click Element    ${pilihIRI1}
Click Button Simpan
    Wait Until Element Is Visible     ${btnSimpan}
    Execute JavaScript              document.evaluate("${btnSimpan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Click Button Keluar
    Wait Until Element Is Visible     ${btnKeluar}   timeout=30s
    Execute JavaScript              document.evaluate("${btnKeluar}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Tugas Pada Tab Tugas Saya
    Input Text    ${search}     Tugas
Click Button Cari
    Click Element    ${btnCari}
Verify Searching Tugas
    Wait Until Element Is Visible    ${verifySearchTugas}   timeout=30s
    Page Should Contain Element      ${verifySearchTugas}
Input Tugas Pada Tab Penugasan
    Input Text    ${search}     Automation
Verify Searching Penugasan
    Wait Until Element Is Visible    ${verifySearchPenugasan}       timeout=30s
    Page Should Contain Element      ${verifySearchPenugasan}
Click Buttton Lihat Tugas
    Wait Until Element Is Visible    ${btnLihatTugas}       timeout=30s
    Click Element    ${btnLihatTugas}
Click Buttton Lihat
    Wait Until Element Is Visible    ${btnLihat}       timeout=30s
    Click Element    ${btnLihat}
Click Tab Tanggapan peserta
    click element    ${tanggapanPeserta}
Verify Detail Tugas
    Wait Until Element Is Visible    ${verifyDetailTugas}   timeout=30s
    Page Should Contain Element      ${verifyDetailTugas}
Click Button Kembali
    wait until element is visible    ${btnKembali}      timeout=30s
    Click Element    ${btnKembali}
#    Execute JavaScript              document.evaluate("${btnKembali}",
#                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#                                    ...    snapshotItem(0).click();
Click Button Edit
    Sleep    5s
#    Wait Until Element Is Visible    ${btnEdit}     timeout=30s
#    Scroll Element Into View    ${btnEdit}  
    Execute JavaScript              document.evaluate("${btnEdit}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();



