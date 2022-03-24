*** Settings ***
Library     SeleniumLibrary
#Resource    ../Xpath/Login.robot
#Resource    ../Keyword/browser.robot
Resource    ../Xpath/kegiatan.robot

*** Variables ***

*** Keywords ***
Click Menu Kegiatan
    Wait Until Element Is Visible    ${menuKegiatan}
    Click Element    ${menuKegiatan}
Verify Page Kegiatan
    Wait Until Element Is Visible    ${verifyKegiatan}
    Page Should Contain Element      ${verifyKegiatan}
Click Button Cari
    Click Element       ${btnCari}
Search Pencarian by Nama Kegiatan
    Go To    http://pmrms.greatpmo.com/implement/kegiatan
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          Kegiatan baru 1
Verify Nama Kegiatan
    Wait Until Element Is Visible       ${verifyNamaKegiatan}
    Page Should Contain Element         ${verifyNamaKegiatan}
Search Pencarian No Data
    Wait Until Element Is Visible    ${inputCari}
    Input Text    ${inputCari}          testing123
Verify No Data
    Wait Until Element Is Visible       ${noData}
    Page Should Contain Element         ${noData}
Click Button Lihat Kegiatan
    Click Element                       ${lihatDetail}
Verify Page Detail Kegiatan
    Wait Until Element Is Visible       ${verifyDetail}
    Page Should Contain Element         ${verifyDetail}
Click Button Kembali
    Click Element                       ${btnKembali}
