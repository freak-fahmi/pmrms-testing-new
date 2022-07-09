*** Settings ***
Library     SeleniumLibrary
Library    String
Resource    ../Xpath/konfigurasi.robot

*** Variables ***

*** Keywords ***
Click Menu Konfigurasi
    go to    http://pmrms.greatpmo.com/configuration/list
#    Wait Until Element Is Visible    ${menuKonfigurasi}
#    Click Element                    ${menuKonfigurasi}
Verify Page Konfigurasi
    Wait Until Element Is Visible    ${verifyPengguna}
    Page Should Contain Element      ${verifyPengguna}
Click Button Tambah Pengguna
    Wait Until Element Is Visible    ${tambahPengguna}
    Click Element                    ${tambahPengguna}
Verify Page Tambah Pengguna
    Wait Until Element Is Visible    ${verifyTambahPengguna}
    Page Should Contain Element      ${verifyTambahPengguna}
Input Nama Depan
    ${numbers}=    Generate Random String      4    0123456789
    Input Text     ${inputNamaDepan}    test${numbers}
Input Nama Belakang
    ${numbers}=    Generate Random String      4    0123456789
    Input Text     ${inputNamaBelakang}    auto${numbers}
input Email
    ${numbers}=    Generate Random String      4    0123456789
    Input Text     ${email}     automation${numbers}
Click Button Cari
    Click Element       ${btnCari}
Search Pencarian by Nama Lengkap
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          Abiratno
Verify Nama Lengkap
    Wait Until Element Is Visible       ${verifyNamaLengkap}
    Page Should Contain Element         ${verifyNamaLengkap}
Search Pencarian by Email
    Go To    http://pmrms.greatpmo.com/configuration/list
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          ptm18@madrasah.kemenag.go.id
Search Pencarian No Data
    Go To    http://pmrms.greatpmo.com/configuration/list
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          testing123
Verify No Data
    Wait Until Element Is Visible       ${noData}
    Page Should Contain Element         ${noData}
Verify Email
    Wait Until Element Is Visible       ${verifyEmail}
    Page Should Contain Element         ${verifyEmail}
Click Tambah Role
    Click Element    ${btnTambahRole}
Select Unit Kerja
    Select From List By Index    ${selectUnitKerja}     1
select Komponent
    Click Element    ${PilihUnit}
pilih komponen
    Click Element    ${komponen}
Select Role
    Click Element    ${roleStaff}
Select Role LSP
    Click Element    ${roleLSP} 
Input Start Date
    Input Text    ${startDate}    2022-03-06
Input End Date
    Input Text    ${EndDate}      2022-12-06
Click Tambah Kegiatan
    Click Element   ${addKegiatan}
Click Pilih
    Click Element    ${pilih}
Click Ubah Photo
    Click Element    ${btnUbahPhoto}
Select Image
    Choose File    ${inputPhoto}        D://Image/testing.jpg
Click Simpan Upload Photo
    Click Element    ${btnSimpanUploadPhoto}
Input Data Tambah Pengguna
    ${numbers}=    Generate Random String      4    0123456789
    input Text     ${inputNamaDepan}    test${numbers}
    Input Text     ${inputNamaBelakang}    auto${numbers}
    Input Text     ${email}     automation${numbers}
    Select From List By Index    ${selectUnitKerja}     0
    Click Element    ${PilihUnit}
    Click Element    ${komponen}
    Click Element    ${btnTambahRole}
    Click Element    ${roleLSP}
    Input Text    ${startDate}    2022-03-06
    Input Text    ${EndDate}      2022-12-06
    Wait Until Element Is Visible    ${addKegiatan}
    Execute JavaScript              document.evaluate("${addKegiatan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Click Element    ${pilih}
    Wait Until Element Is Visible    ${selectItem}
    Click Element    ${selectItem}
    Click Element    ${btnTambah}
    Click Element    ${btnUbahPhoto}
    Choose File    ${inputPhoto}        D://Image/testing.jpg
    Click Element    ${btnSimpanUploadPhoto}
Click Button Simpan Tambah Pengguna
#    Wait Until Element Is Visible     ${btnSimpan}
    Execute JavaScript              document.evaluate("${btnSimpanPengguna}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Click Button Batal Tambah Pengguna
    Wait Until Element Is Visible    ${btnBatalPengguna}
#    Click Element                    ${btnBatal}
    Execute JavaScript              document.evaluate("${btnBatalPengguna}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();