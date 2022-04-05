*** Settings ***
Library     SeleniumLibrary
Resource    ../Xpath/Login.robot
Resource    ../Keyword/browser.robot

*** Variables ***
${adm_usr}              ptm15@madrasah.kemenag.go.id
${usr_role4}            ptm16@madrasah.kemenag.go.id
${usr_staffAdmin}       ptm22@madrasah.kemenag.go.id
${usr_penagungjawab3}   ptm13@madrasah.kemenag.go.id
${usr_penagungjawab4}   ptm14@madrasah.kemenag.go.id
${adm_pwd}              User@madrasah2022
${user_pwd}             User@madrasah2022
${adm_pwd_wrong}        1234567890

*** Keywords ***
Login page is open
    Open Browser
Input Text Kosong
#    Input Text          ${username}         ${EMPTY}
    Press Key               ${username}         \DELETE
    Sleep    5s
Input Valid Username
    input text                      ${username}     ${adm_usr}
Input Username Consultant
    input text                      ${username}     ptm37@madrasah.kemenag.go.id
Input Username Koordinator
    input text                      ${username}     ptm34@madrasah.kemenag.go.id
Input Username PMU
    input text                      ${username}     ptm16@madrasah.kemenag.go.id
Input Valid Username role komponen 4
    input text                      ${username}     ${usr_role4}
Input Valid Username staff administrasi
    input text                      ${username}     ${usr_staffAdmin}
#Input Valid Username Penanggung Jawab 3
#    input text                      ${username}     ${usr_penagungjawab3}
#Input Valid Username Penanggung Jawab 4
#    input text                      ${username}     ${usr_penagungjawab4}
Input Valid Password
    input text                      ${pwd}          ${adm_pwd}
Input Valid Password Role
    Input Text    ${pwd}        ${user_pwd}
Input Invalid Password
    input text                      ${pwd}          ${adm_pwd_wrong}
Click Button Submit
    Execute JavaScript              document.evaluate("${btnSubmit}",
                                    ...    document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).
                                    ...    snapshotItem(0).click();
#    Click Element                   ${btnSubmit}
Verify Home Page is open
    Wait Until Element Is Visible    ${Verify_Home_Admin}   timeout=30s
    Page Should Contain Element      ${Verify_Home_Admin}
Verify Home Page Penanggung Jawab is open
    Wait Until Element Is Visible    ${Verify_Profile}  timeout=30s
    Page Should Contain Element      ${Verify_Profile}
#Verify Home Page Penanggung Jawab 2 is open
#    Wait Until Element Is Visible    ${Verify_PenanggungJawab2}
#    Page Should Contain Element      ${Verify_PenanggungJawab2}
#Verify Home Page Penanggung Jawab 3 is open
#    Wait Until Element Is Visible    ${Verify_PenanggungJawab3}
#    Page Should Contain Element      ${Verify_PenanggungJawab3}
#Verify Home Page Penanggung Jawab 4 is open
#    Wait Until Element Is Visible    ${Verify_PenanggungJawab4}
#    Page Should Contain Element      ${Verify_PenanggungJawab4}
Verify Notif blank username
    Wait Until Element Is Visible    ${blank_usr}
    Page Should Contain Element      ${blank_usr}
Verify Notif Blank Password
    Wait Until Element Is Visible    ${blank_pwd}
    Page Should Contain Element      ${blank_pwd}
Verify Notif blank username & password
    Wait Until Element Is Visible    ${blank_usr_pwd}
    Page Should Contain Element      ${blank_usr_pwd}
Verify Notif Pengguna tidak diketahui
    Wait Until Element Is Visible    ${usr_tdk_diketahui}
    Page Should Contain Element      ${usr_tdk_diketahui}
Input Username Doni Wibowo
   Input Text    ${username}        ptm17@madrasah.kemenag.go.id
Input Password Doni Wibowo
    input text                      ${pwd}          ${adm_pwd}



