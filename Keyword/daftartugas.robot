*** Settings ***
Library     SeleniumLibrary
Resource    ../Xpath/daftartugas.robot

*** Variables ***

*** Keywords ***
Click Menu Profile
    Wait Until Element Is Visible    ${nameProfile}
    Click Element                    ${nameProfile}
Click Button Daftar Tugas
    Click Element                    ${daftarTugas}
Verify Page Daftar Tugas
    Wait Until Element Is Visible    ${verifyDaftarTugas}
    Page Should Contain Element      ${verifyDaftarTugas}