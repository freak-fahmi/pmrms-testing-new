*** Settings ***
Library     SeleniumLibrary
Library    String
Resource    ../Xpath/awp.robot

*** Variables ***
${text}

*** Keywords ***
Click Menu AWP
    Wait Until Element Is Visible    ${menuAwp}     timeout=30s
    Click Element    ${menuAwp}
Verify Page AWP
    Wait Until Element Is Visible    ${verifyAwp}  timeout=30s
    Page Should Contain Element    ${verifyAwp}
Input Search by Nama kegiatan AWP
    Wait Until Element Is Visible    ${searchAwp}       timeout=30s
    Input Text      ${searchAwp}    Automation
Input Search by Pagu Anggaran AWP
    Go To       http://pmrms.greatpmo.com/admin/awp
    Wait Until Element Is Visible    ${searchAwp}       timeout=30s
    Input Text      ${searchAwp}    200
Click Detail Awp
    Wait Until Element Is Visible    ${detailAwp}   timeout=30s
#    Click Element    ${detailAwp}
    Execute JavaScript              document.evaluate("${detailAwp}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Verify Detail Awp
    Wait Until Element Is Visible    ${verifyDetailAwp}     timeout=30s
    Page Should Contain Element    ${verifyDetailAwp}
Input Search by Komponen AWP
    Go To       http://pmrms.greatpmo.com/admin/awp
    Wait Until Element Is Visible    ${searchAwp}       timeout=30s
    Input Text      ${searchAwp}    Kelompok Kerja Guru
Input Search Karakter Angka Tidak sesuai
    Go To       http://pmrms.greatpmo.com/admin/awp
    Wait Until Element Is Visible    ${searchAwp}       timeout=30s
    Input Text      ${searchAwp}    testing123
Click Button Cari
    Click Element       ${btnCari}
Verify Search AWP
    Wait Until Element Is Visible    ${verifySearch}
    Page Should Contain Element    ${verifySearch}
Verify Pagu Anggaran Awp
    Wait Until Element Is Visible    ${verifySearchPaguAnggran}
    Page Should Contain Element    ${verifySearchPaguAnggran}
Verify komponen Awp
    Wait Until Element Is Visible    ${verifySearchKomponen}
    Page Should Contain Element    ${verifySearchKomponen}
Verify No Data
    Wait Until Element Is Visible    ${verifyNoData}
    Page Should Contain Element    ${verifyNoData}
Click Pagination AWP
    Wait Until Element Is Visible    ${pagination}
    Execute JavaScript              document.evaluate("${pagination}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${pagination}
Verify Pagination AWP
    Wait Until Element Is Visible       ${verfyPagination}
    Page Should Contain Element         ${verfyPagination}
Click Button Tambah AWP
    Wait Until Element Is Visible   ${btnAdd}   timeout=30s
    Click Element                   ${btnAdd}
Verify Page Tambah AWP
    Wait Until Element Is Visible       ${verifyAddAwp}
    Page Should Contain Element         ${verifyAddAwp}
Click Button Kembali
    Click Element    ${btnKembali}
Click Button Batal
    Wait Until Element Is Visible    ${btnBatal}       timeout=30s
    Execute JavaScript              document.evaluate("${btnBatal}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Data Umum
    ${text}=    Generate Random String      10      [LOWER]
    Set Global Variable    ${text}
    Input Text    ${inputTahun}         2022
    Click Element    //label[text()='Komponen :']
    Wait Until Element Is Visible    ${pilihKomponen}   timeout=10s
    Click Element    ${pilihKomponen}
    Click Element    ${clickKomponen}
    Click Element    ${clickKomponen}
    sleep    5s
    Wait Until Element Is Visible     ${pilihSubcomponent}      timeout=30s
    Click Element    ${pilihSubcomponent}
    Wait Until Element Is Visible     ${clickSubComponent}  timeout=10s
    Click Element    ${clickSubComponent}
    Sleep    3s

    Execute JavaScript              document.evaluate("${pilihSubSubComponent}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    sleep    3s
    Click Element                   ${clickSubSubComponent}
    Sleep    3s
    Execute JavaScript              document.evaluate("${pilihKegiatan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Click Element    //label[text()='Nama Kegiatan :']
    Sleep    3s
#    Execute JavaScript              document.evaluate("${pilihKegiatan}",
#                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
#                                    ...    snapshotItem(0).click();

    Execute JavaScript              document.evaluate("${clickkeg}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Input Text    ${inputSubComponent}    Automation Testing ${text}
#    Input Text    ${inputKegiatan}      Automation Testing ${text}
    Wait Until Element Is Visible    ${modaKegiatan}
    Execute JavaScript              document.evaluate("${modaKegiatan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Input Text    ${keteranganKegiatan}     Automation Testing
    Input Text    ${inputBudget}        2000000
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Data Kegiatan
#    ${text}=    Generate Random String      10      [LOWER]
    Wait Until Element Is Visible    ${TujuanKegiatan}  timeout=30s
    Input Text    ${TujuanKegiatan}     Automation Testing ${text}
    Input Text    ${descKegiatan}       Automation Testing ${text}
    Execute JavaScript              document.evaluate("${radioPenyedia}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

Input Data Pelaksanaan
#    ${text}=    Generate Random String      10      [LOWER]
    Input Text    ${volumeEvent}    200
    Input Text    ${tglMulai}       2022-04-30
    Input Text    ${tglAkhir}       2022-05-30
    Input Text    ${infoLainnya}    Automation Testing ${text}
    Click Element    ${tambahLokasi}
    Click Element    ${pilihProvinsi}
    Wait Until Element Is Visible    ${clickAceh}   timeout=30s
    Click Element    ${clickAceh}
    Sleep    3s
    Click Element    ${clickAceh}
    Wait Until Element Is Visible    ${pilihkabkota}    timeout=30s
    Click Element    ${pilihkabkota}
    Click Element    ${combobox}
    Wait Until Element Is Visible    ${clickAcehBarat}  timeout=30s
    Click Element    ${clickAcehBarat}
    Click Element    ${btnSimpanPopup}

    Execute JavaScript              document.evaluate("${jenisKegiatan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

    Execute JavaScript              document.evaluate("${pilihJenisKegiatan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

#    Click Element    ${pilihJenisKegiatan}
    Input Text    ${jmlnarasumber}      10
    Input Text    ${asallembaga}        pendidikan
    Input Text    ${narasumberLainnya}    fahmi
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Data Peserta
#    ${text}=    Generate Random String      10      [LOWER]
    Input Text    ${jmlPeserta}     500
    Input Text    ${pesertaLainnya}     fahmi
    Input Text    ${sasaranPeserta}     Automation Peserta
    Input Text    ${outputKegiatan}     Automation Testing ${text}
    Execute JavaScript              document.evaluate("${btnPDOI}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${pilihPDOI}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${btnPDOI}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    3s
    Execute JavaScript              document.evaluate("${kontribusiIRI}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${pilihIRI}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${btnSimpan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Sleep    5s
Click Button Export Awp ke Doc
    Wait Until Element Is Visible       ${exportAwpDoc}        timeout=30s
    Click Element    ${exportAwpDoc}
Pilih Export 2021
    Click Element    ${export2021}
    Wait Until Element Is Visible    ${DownloadAwp}
Click Donwload Awp
    Click Element    ${DownloadAwp}
Click Edit Informasi Tambahan
    Click Element   ${editInfoTambahan}
Input Capaian PDO
    Wait Until Element Is Visible    ${btnLanjut}   timeout=30s
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Kendala
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Informasi Tambahan
    Execute JavaScript              document.evaluate("${btnLanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Save Informasi Tambahan
    Execute JavaScript              document.evaluate("${btnSimpan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element    ${btnLanjut}
#    Click Element    ${btnLanjut}
#    Click Element    ${btnLanjut}
#    Wait Until Element Is Visible    ${inputCapaian}   timeout=30s
#    Input Text       ${inputCapaian}    automation

    
    



