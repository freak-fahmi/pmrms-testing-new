*** Settings ***
Library     SeleniumLibrary
Resource    ../Xpath/awp.robot

*** Variables ***

*** Keywords ***
Click Menu AWP
    Wait Until Element Is Visible    ${menuAwp}
    Click Element    ${menuAwp}
Verify Page AWP
    Wait Until Element Is Visible    ${verifyAwp}
    Page Should Contain Element    ${verifyAwp}
Input Search by Nama kegiatan AWP
    Wait Until Element Is Visible    ${searchAwp}
    Input Text      ${searchAwp}    Penyusunan Modul Pustakawan
Input Search by Pagu Anggaran AWP
    Go To       http://pmrms.greatpmo.com/admin/awp
    Wait Until Element Is Visible    ${searchAwp}
    Input Text      ${searchAwp}    200
Input Search by Komponen AWP
    Go To       http://pmrms.greatpmo.com/admin/awp
    Wait Until Element Is Visible    ${searchAwp}
    Input Text      ${searchAwp}    Kelompok Kerja Guru
Input Search Karakter Angka Tidak sesuai
    Go To       http://pmrms.greatpmo.com/admin/awp
    Wait Until Element Is Visible    ${searchAwp}
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

