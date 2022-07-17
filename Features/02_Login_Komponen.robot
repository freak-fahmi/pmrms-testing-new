*** Settings ***
Documentation  Regression Test Login
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/login.robot
Library     DataDriver  ../TestData/PMRMS-User.xlsx
#Resource    ../Xpath/login.robot

#Test Setup  Open Browser
#Test Teardown   Finish Testcase
Test Template   Regression Login Role

*** Variables ***
${txt_username}                 //input[@id='email']
${txt_password}                 //input[@type='password']
${btnSubmit}                    //button[@class='btn']
${Verify_Profile}               css= .profile-button

*** Test Cases ***
Verify Login Komponen   ${email}

*** Keywords ***
Regression Login Role
    [Arguments]     ${email}
    Login page is open
    Input Text      ${txt_username}         ${email}
    Input Text      ${txt_password}         User@madrasah2022
    Click Button Submit
#    Wait Until Element Is Visible           ${Verify_Profile}    timeout=30s
#    Page Should Contain Element             ${Verify_Profile}
    [Teardown]  Finish Testcase
