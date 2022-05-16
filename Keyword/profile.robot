*** Settings ***
Library     SeleniumLibrary
Resource    ../Xpath/profile.robot

*** Variables ***

*** Keywords ***
Click Menu Profile
    Wait Until Element Is Visible    ${nameProfile}
    Click Element                    ${nameProfile}
Click Button Profile
    Wait Until Element Is Visible    ${btnProfile}
    Click Element                    ${btnProfile}
Verify Page Profile
    Wait Until Element Is Visible    ${verifyProfile}
    Page Should Contain Element      ${verifyProfile}
Click Button Edit Profile
    Wait Until Element Is Visible    ${btnEdit}
    Execute JavaScript              document.evaluate("${btnEdit}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Click Button Simpan
#    Wait Until Element Is Visible     ${btnSimpan}
    Execute JavaScript              document.evaluate("${btnSimpan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Click Button Batal
#    Click Element                    ${btnBatal}
    Execute JavaScript              document.evaluate("${btnBatal}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Click Label Tambah Role
    Click Element                    ${btnTambahRole}
Cilck Label Staff
    Click Element                    ${labelStaff}
Click Delete Role Staff
    Wait Until Element Is Visible    ${deleteRole}      timeout=10s
    Click Element                    ${deleteRole}
Verify Role Staff
    Wait Until Element Is Visible    ${verifyRoleStaff}
    Page Should Contain Element      ${verifyRoleStaff}
Verify Delete Role Staff
    Page Should Not Contain Element    ${verifyRoleStaff}
Click Button Ubah Password
    Wait Until Element Is Visible    ${btnUbahPassword}
    Execute JavaScript              document.evaluate("${btnUbahPassword}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Verify Page Ubah Password
    Page Should Contain Element         ${verifyPageUbahPwd}
Input Password Lama
    Input Text    ${inputPwdLama}    User@madrasah2022
Input Password Baru
    Input Text    ${inputPwdBaru}    123BisA#
Input Konfirmasi Password
    Input Text    ${inputKonfPwd}    123BisA#
Verify Alert Ubah Password
    Wait Until Element Is Visible    ${alertUbahPwd}
    Page Should Contain Element      ${alertUbahPwd}