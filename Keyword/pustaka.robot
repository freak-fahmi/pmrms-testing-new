*** Settings ***
Library     SeleniumLibrary
Library    String
Resource    ../Xpath/pustaka.robot

*** Variables ***

*** Keywords ***
Click Menu Pustaka
    Wait Until Element Is Visible    ${menuPustaka}
    Click Element    ${menuPustaka}
Verify Page Dokumen Umum
    Wait Until Element Is Visible    ${verifyDokumenUmum}
    Page Should Contain Element    ${verifyDokumenUmum}
Click Button Upload File
    Click Element    ${btnUploadFile}
Verify Page Upload File
    Wait Until Element Is Visible    ${verifyUploadFile}
    Page Should Contain Element    ${verifyUploadFile}
Click Button Batal
    Wait Until Element Is Visible    ${btnBatal}
    Execute JavaScript              document.evaluate("${btnBatal}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Input Upload File MOM
    Sleep    3s
#    Wait Until Element Is Visible    ${tipeFile}       timeout=30s
    Select From List By Index    ${tipeFile}    2
    Click Element    ${unitkerja}
    Click Element    ${komponen1}
    Input Text    ${namaFile}    Automation Testing
    Input Text    ${tglrapat}    2022-05-30
    Wait Until Element Is Visible    ${pilihTag}
    Click Element    ${pilihTag}
    Click Element    ${pilihMoM}
    Input Text    ${versi}  1
    Wait Until Element Is Enabled    ${uploadfile}
#    Choose File     ${uploadfile}        D:\\Image\test.pdf
    Drag And Drop    ${uploadfile}    D://Image/test.pdf
    Drag And Drop    locator    target

Click Button Simpan
    Wait Until Element Is Visible    ${btnSimpan}
    Execute JavaScript              document.evaluate("${btnSimpan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();