*** Settings ***
Documentation  Regression Test Login
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/login.robot
#Resource    ../Xpath/login.robot

#Test Setup  Open Browser
#Test Teardown   Finish Testcase
Test Template   Regression Login Role

*** Variables ***
${txt_username}                 //input[@id='email']
${txt_password}                 //input[@type='password']
${btnSubmit}                    //button[@class='btn']
${Verify_Profile}               css= .profile-button

*** Test Cases ***                                                                      EMAIL
Komponen 4 Project Management Unit Chair (coordinator/adminstrator)                     ptm16@madrasah.kemenag.go.id
Komponen 4 Secretary (coordinator/adminstrator)                                         ptm17@madrasah.kemenag.go.id
Komponen 4 Treasure (coordinator/adminstrator)                                          ptm18@madrasah.kemenag.go.id
Komponen 4 Staff Treasure PMU (staff)                                                   ptm33@madrasah.kemenag.go.id
Komponen 4 Lead Consultan - Project Management Specialist (consultan/adminstrator)      ptm20@madrasah.kemenag.go.id
Komponen 4 Staff Adminstrator PMU (staff)                                               ptm21@madrasah.kemenag.go.id
Komponen 4 Staff Adminstrator PMU (staff)                                               ptm22@madrasah.kemenag.go.id
Komponen 4 Staff Adminstrator PMU (staff)                                               ptm23@madrasah.kemenag.go.id
Komponen 4 Staff Adminstrator PMU (staff)                                               ptm24@madrasah.kemenag.go.id
Komponen 4 Billingual Interpreter & Media (assistant)                                   ptm25@madrasah.kemenag.go.id
Komponen 4 Project Management Assistant (assistant)                                     ptm26@madrasah.kemenag.go.id
Komponen 4 Project Management Assistant (assistant)                                     ptm32@madrasah.kemenag.go.id
Komponen 4 Consultan for Management & Evaluation (consultan)                            ptm27@madrasah.kemenag.go.id
Komponen 4 Monitoring & Evaluation Assistant (assistant)                                ptm29@madrasah.kemenag.go.id
Komponen 4 Prorecrutment Specialist (consultant                                         ptm28@madrasah.kemenag.go.id
Komponen 4 Procurement Assistant (assistant)                                            ptm30@madrasah.kemenag.go.id
Komponen 4 Procurement Assistant (assistant)                                            ptm31@madrasah.kemenag.go.id

Komponen 1 Project Management Unit Chair (coordinator/adminstrator)                     ptm16@madrasah.kemenag.go.id
Komponen 1 Coordinator Component 1 (coordinator)                                        ptm34@madrasah.kemenag.go.id
Komponen 1 Consultan for e-RKAM Program (consultant)                                    ptm37@madrasah.kemenag.go.id
Komponen 1 Consultan for Affirmative And Performance Grant (consultant)                 ptm38@madrasah.kemenag.go.id
Komponen 1 Staff Component 1 (staff)                                                    ptm39@madrasah.kemenag.go.id
Komponen 1 Staff Component 1 (staff)                                                    ptm40@madrasah.kemenag.go.id

Komponen 2 Project Management Unit Chair (coordinator/adminstrator)                     ptm16@madrasah.kemenag.go.id
Komponen 2 Coordinator Component 2 (coordinator)                                        ptm35@madrasah.kemenag.go.id
Komponen 2 Consultan For Assesment of Learning Competencies (consultan)                 ptm41@madrasah.kemenag.go.id
Komponen 2 Staff Component 2 (staff)                                                    ptm42@madrasah.kemenag.go.id
Komponen 2 Staff Component 2 (staff)                                                    ptm43@madrasah.kemenag.go.id

Komponen 3 Project Management Unit Chair (coordinator/adminstrator)                     ptm16@madrasah.kemenag.go.id
Komponen 3 Coordinator Component 3 (coordinator)                                        ptm36@madrasah.kemenag.go.id
Komponen 3 Training Consultan And Develeopment (consultan)                              ptm44@madrasah.kemenag.go.id
Komponen 3 CPD (consultant)                                                             ptm48@madrasah.kemenag.go.id
Komponen 3 Education Specialist For Continuing Professional Development (consultant)    ptm49@madrasah.kemenag.go.id
Komponen 3 Program Assistant fro Monitoring (assistant)                                 ptm45@madrasah.kemenag.go.id
Komponen 3 Assistant Program for Academic (assistant)                                   ptm46@madrasah.kemenag.go.id
Komponen 3 Staff Component 3 (staff)                                                    ptm47@madrasah.kemenag.go.id
Komponen 3 Staff Component 3 (staff)                                                    ptm50@madrasah.kemenag.go.id

Komponen 4.2 Project Management Unit Chair (coordinator/adminstrator)                   ptm16@madrasah.kemenag.go.id
Komponen 4.2 Coordinator Component 4.2 (coordinator)                                    ptm51@madrasah.kemenag.go.id
Komponen 4.2 Consultan (consultant)                                                     ptm52@madrasah.kemenag.go.id

Kompoen 4.1 Project Management Unit Chair (coordinator/adminstrator)                    ptm16@madrasah.kemenag.go.id
Kompoen 4.1 Coordinator Component 4.1 (coordinator)                                     ptm53@madrasah.kemenag.go.id
Kompoen 4.1 PIC 4.1 (consultant)                                                        ptm54@madrasah.kemenag.go.id
Kompoen 4.1 Staff Component 4.1 (staff)                                                 ptm55@madrasah.kemenag.go.id
Kompoen 4.1 Staff Component 4.1 (staff)                                                 ptm56@madrasah.kemenag.go.id
Kompoen 4.1 MIS Specialist (consultant)                                                 ptm57@madrasah.kemenag.go.id
Kompoen 4.1 Senior Program Assistant (assistant)                                        ptm58@madrasah.kemenag.go.id
Kompoen 4.1 Subject Matter Expert EMIS (consultant)                                     ptm59@madrasah.kemenag.go.id

*** Keywords ***
Regression Login Role
    [Arguments]     ${email}
    Login page is open
    Input Text      ${txt_username}         ${email}
    Input Text      ${txt_password}         User@madrasah2022
    Click Button Submit
    Wait Until Element Is Visible           ${Verify_Profile}    timeout=30s
    Page Should Contain Element             ${Verify_Profile}
    [Teardown]  Finish Testcase
