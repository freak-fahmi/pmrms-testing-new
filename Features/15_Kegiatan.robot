*** Settings ***
Documentation  Regression Test Menu Kegiatan
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/kegiatan.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Menu Kegiatan
    [Documentation]  Regression Menu Kegiatan
    [Tags]  Functionality
    Scenario 1: Login with username valid and password valid
    Scenario 2: User mengklik sidebar menu kegiatan
    Scenario 3: User melakukan pencarian dengan data tidak sesuai
    Scenario 4: User melakukan pencarian data by nama kegiatan
    Scenario 5: User Mengklik Lihat Detail kegiatan
    Scenario 6: User Mengklik Button kembali dari page detail kegiatan

*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario 2: User mengklik sidebar menu kegiatan
    Click Menu Kegiatan
    Verify Page Kegiatan
Scenario 3: User melakukan pencarian dengan data tidak sesuai
    Search Pencarian No Data
    Click Button Cari
    Verify No Data
Scenario 4: User melakukan pencarian data by nama kegiatan
    Search Pencarian by Nama Kegiatan
    Click Button Cari
    Verify Nama Kegiatan
Scenario 5: User Mengklik Lihat Detail kegiatan
    Click Button Lihat Kegiatan
    Verify Page Detail Kegiatan
Scenario 6: User Mengklik Button kembali dari page detail kegiatan
    Click Button Kembali
    Verify Page Kegiatan




