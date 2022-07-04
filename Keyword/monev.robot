*** Settings ***
Library     SeleniumLibrary
Resource    ../Xpath/monev.robot

*** Variables ***


*** Keywords ***
Click Monev Output Target
    Go To    http://pmrms.greatpmo.com/monev/list-monev/output
    Wait Until Element Is Visible    ${pageMonev}   timeout=30s
    Page Should Contain Element    ${pageMonev}

Click Monev Longterm target
    Go To    http://pmrms.greatpmo.com/monev/monev-longterm/Longterm
    Wait Until Element Is Visible    ${pageLongTerm}
#    Page Should Contain Element    ${pageLongTerm}
Click View Target
    Wait Until Element Is Visible    ${viewLongTerm}
    Click Element    ${viewLongTerm}
Click Close View
    Wait Until Element Is Visible    ${closeLongTerm}
    Click Element    ${closeLongTerm}
Click Button Edit
    Wait Until Element Is Visible    ${btnEdit}     timeout=30s
    Click Element    ${btnEdit}
Pilih indikator longterm
    wait until element is visible    ${pilihIndikator}      timeout=30s
    Execute JavaScript              document.evaluate("${pilihIndikator}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

    click element    ${indikatorLongterm}
Pilih indikator midterm
    wait until element is visible    ${pilihIndikator}      timeout=30s
    Execute JavaScript              document.evaluate("${pilihIndikator}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${indikatormidterm}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();


Pilih indikator intermediate
    wait until element is visible    ${pilihIndikator}      timeout=30s
    Execute JavaScript              document.evaluate("${pilihIndikator}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
    Execute JavaScript              document.evaluate("${indikatorIntermediate}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();


Click Button Lanjut
    Execute JavaScript              document.evaluate("${lanjut}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();

Click Button Simpan
    Wait Until Element Is Visible    ${btnSimpan}
    Execute JavaScript              document.evaluate("${btnSimpan}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
Click Monev Midterm Output Target
    Go To    http://pmrms.greatpmo.com/monev/monev-midterm/Midterm
    Wait Until Element Is Visible    ${pageMonevMidterm}   timeout=30s
    Page Should Contain Element     ${pageMonevMidterm}
Click Monev Intermediate Output Target
    Go To    http://pmrms.greatpmo.com/monev/monev-intermediate/intermediate
    Wait Until Element Is Visible    ${pageMonevIntermediate}   timeout=30s
    Page Should Contain Element    ${pageMonevIntermediate}
Click Edit Monev output
    go to    http://pmrms.greatpmo.com/monev/list-monev/output
    sleep    3s
    click element       ${btnEdit}
Click Button Kembali
    wait until element is visible    ${btnKembali}      timeout=30s
    click element    ${btnKembali}
Click Button Tambah Output indikator keberhasilan
    click element    ${btnTambahOutput}
Input Tambah Target Output Kegiatan
    click element    ${pilihKomponen}



