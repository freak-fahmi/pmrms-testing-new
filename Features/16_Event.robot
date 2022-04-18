*** Settings ***
Documentation  Regression Test Menu Event
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/event.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Menu Event
    [Documentation]  Regression Menu Event
    [Tags]  Functionality
    Scenario 1: Login with username valid and password valid
    Scenario 2: User mengklik sidebar menu Event
    Scenario 3: User melakukan pencarian dengan data tidak sesuai
    Scenario 4: User melakukan pencarian data by nama kegiatan
    Scenario 5: User Mengklik Lihat Detail Event
    Scenario 6: User mengklik button Tab laporan event
    Scenario 7: User Mengklik Detail Laporan Event
    Scenario 8: User Mengklik History Pada Detail Laporan Event
    Scenario 9: User Mengklik Button Kembali dari Page detail laporan Event
    Scenario 10: User Mengklik Button kembali dari page detail event
    Scenario 11: User Mnegklik Button Keluar dari page detail event
    Scenario 12: User mengklik button kalender event

*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario 2: User mengklik sidebar menu Event
    Click Menu Event
    Verify Page Event
Scenario 3: User melakukan pencarian dengan data tidak sesuai
    Search Pencarian No Data
    Click Button Cari
    Verify No Data
Scenario 4: User melakukan pencarian data by nama kegiatan
    Search Pencarian by Nama Kegiatan
    Click Button Cari
#    Verify Nama Kegiatan
Scenario 5: User Mengklik Lihat Detail Event
    Click Button Lihat Event
    Verify Page Detail Event
Scenario 6: User mengklik button Tab laporan event
    Click Tab Laporan Event
Scenario 7: User Mengklik Detail Laporan Event
    Click Button Laporan Event
    Verify Page Detail Laporan Event
Scenario 8: User Mengklik History Pada Detail Laporan Event
    Click Button History
    Verify Page History
    Click Button Close
Scenario 9: User Mengklik Button Kembali dari Page detail laporan Event
    Click Button Kembali
Scenario 10: User Mengklik Button kembali dari page detail event
    Click Button Kembali
    Verify Page Event
Scenario 11: User Mnegklik Button Keluar dari page detail event
    Click Button Lihat Event
    Verify Page Detail Event
    Click Button Keluar
    Verify Page Event
Scenario 12: User mengklik button kalender event
    Click Tab Calender Event
    Verify Page Calender Event









