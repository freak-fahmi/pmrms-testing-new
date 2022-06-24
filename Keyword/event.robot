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
    Wait Until Element Is Visible    ${inputCari}       timeout=30s
    Input Text    ${inputCari}          Automation Testing
Verify Nama Kegiatan
    Wait Until Element Is Visible       ${verifyNamaEvent}  timeout=30s
    Page Should Contain Element         ${verifyNamaEvent}
Search Pencarian No Data
    Wait Until Element Is Visible    ${inputCari}       timeout=30s
    Input Text    ${inputCari}          testing123
Verify No Data
    Wait Until Element Is Visible       ${noData}   timeout=30s
    Page Should Contain Element         ${noData}
Click Button Lihat Event
    Wait Until Element Is Visible    ${lihatDetailperencanaan}     timeout=30s
    Execute JavaScript              document.evaluate("${lihatDetailperencanaan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element                       ${lihatDetailperencanaan}
Bendahara Click Button Lihat Event
    Wait Until Element Is Visible    ${lihatDetailEvaluasi}     timeout=30s
    Execute JavaScript              document.evaluate("${lihatDetailEvaluasi}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element                       ${lihatDetailEvaluasi}
PMU Click Button Lihat Event
    Wait Until Element Is Visible    ${lihatDetailpPmu}     timeout=30s
    Execute JavaScript              document.evaluate("${lihatDetailpPmu}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element                       ${lihatDetailpPmu}
Verify Page Detail Event
    Wait Until Element Is Visible       ${verifyDetail}     timeout=30s
    Page Should Contain Element         ${verifyDetail}
Click Button Kembali
    Wait Until Element Is Visible    ${btnKembali}      timeout=30s
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
Click Button Tambah Concept Note
    Click Element    ${btnConceptNote}
Click Button Pilih
    Click Element    ${btnPilih}
Pilih Concept Note
    Wait Until Element Is Visible    ${pilihItem}
    Click Element    ${pilihItem}
Click Element Buat Concept Note
    Wait Until Element Is Visible       ${btnBuatConceptNote}
    Click Element                       ${btnBuatConceptNote}
Input Nama Event
    Wait Until Element Is Visible    ${nameEvent}   timeout=30s
    Input Text    ${nameEvent}       automation
Click Button Lanjut
#    Click Element    ${btnLanjut}
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Waktu Pelaksanaan kegiatan
    Input Text    ${tglMulai}    2022-05-16
    Input Text    ${tglAkhir}    2022-06-30
Pilih Tempat pelaksanaan
    Click Element       ${btnTptPelaksanaan}
    Click Element       ${btnPilihProvinsi}
    Input Text          ${searchProvinsi}    Jawa barat
    Click Element       ${pilihJabar}
    Click Element       ${pilihKota}
    Wait Until Element Is Visible    ${pilihBdg}    timeout=30s
    Click Element       ${pilihBdg}
    Click Element       ${btnSimpan}
Input Lokasi
    Wait Until Element Is Visible    ${inputLokasi}    timeout=30s
    Input Text    ${inputLokasi}    Bandung
Tambah Peserta Pelaksana
#    Click Element    ${tbhPesertaPelaksana}
    Execute JavaScript              document.evaluate("${tbhPesertaPelaksana}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Select From List By Index    ${UnitKerja}   0
    Click Element    ${btnPilihKomponen}
    Click Element    ${pilihKomponen}
    Wait Until Element Is Visible    ${btnTambahStaff}      timeout=30s
    Click Element    ${btnTambahStaff}
    Click Element    ${pilihStaff}
    Click Element    ${btnSimpan}

Input Latar Belakang Event
    Input Text    ${latarbelakangEvent}    Automation Testing
Input Deskripsi Event
    Input Text    ${descEvent}    Automation Testing
Input Tujuan Event
    Input Text    ${tujuanEvent}    Automation Testing
Input Output Event
    Input Text    ${outputEvent}    Automation Testing
Input Jumlah Peserta
    Input Text    ${jmlPeserta}    200
Submit Agenda Event
    Execute JavaScript              document.evaluate("${agendaEvent}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${agendaEvent}
    Choose File      ${inputFile}         D://Image/test.pdf
    Click Element       ${btnSimpan}
Pilih Narahubung
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
#    Scroll Element Into View        //label[text()='Sebelumnya']
    Execute JavaScript              document.evaluate("${btnNarahubung}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${btnNarahubung}
    Wait Until Element Is Visible    ${pilihNarahubung}     timeout=10s
    Execute JavaScript              document.evaluate("${pilihNarahubung}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

#    Click Element    ${pilihNarahubung}
Submit RAB Kegiatan
#    Click Element    ${rabKegiatan}
    Execute JavaScript              document.evaluate("${rabKegiatan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Choose File      ${inputFile}         D://Image/test.pdf
    Click Element       ${btnSimpan}
Click Button Simpan
    Wait Until Element Is Visible    ${SimpanBtn}   timeout=30s
    Execute JavaScript              document.evaluate("${SimpanBtn}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    10s
Click Button Setuju
    Execute JavaScript              document.evaluate("${btnSetuju}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Reason Setuju
    Input Text    ${reasonSetuju}    Automation Testing
Click Radio Button Ada Anggaran
    Click Element    ${radioAdaAnggaran}
Click Button Kirim
    Click Element    ${btnKirim}  







    
