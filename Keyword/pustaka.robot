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