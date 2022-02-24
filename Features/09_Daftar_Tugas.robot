*** Settings ***
Documentation  Regression Test Daftar Tugas
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/daftartugas.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Menu Daftar Tugas
    [Documentation]  Regression Test Daftar Tugas
    [Tags]  Functionality
    Scenario 1: Login with username valid and password valid
    Scenario 2: User mengklik menu Daftar Tugas
*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario 2: User mengklik menu Daftar Tugas
    Click Menu Profile
    Click Button Daftar Tugas
    Verify Page Daftar Tugas





