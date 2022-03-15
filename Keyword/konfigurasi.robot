*** Settings ***
Library     SeleniumLibrary
Library    String
Resource    ../Xpath/konfigurasi.robot

*** Variables ***

*** Keywords ***
Click Menu Konfigurasi
    Wait Until Element Is Visible    ${menuKonfigurasi}
    Click Element                    ${menuKonfigurasi}
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
Verify Email
    Wait Until Element Is Visible       ${verifyEmail}
    Page Should Contain Element         ${verifyEmail}
Click Tambah Role
    Click Element    ${btnTambahRole}
Select Role
    Click Element    ${roleStaff}
Click Ubah Photo
    Click Element    ${btnUbahPhoto}
Select Image
    Choose File    ${inputPhoto}        D://Image/testing.jpg
Click Simpan Upload Photo
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