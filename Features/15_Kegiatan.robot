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
    Scenario 5: User Mengklik Sorting Status
    Scenario 6: Konsultan Melakukan Implementasi Kegiatan
    Scenario 7: User Mengklik Button Keluar dari detail kegiatan
    Scenario 8: User Mengklik Lihat Detail kegiatan
    Scenario 9: User Mengklik Button kembali dari page detail kegiatan
    Scenario 10: Consultan Logout
    Scenario 11: Login Coordinator
    Scenario 12: Coordinator Melakukan Quality Entry
    Scenario 13: Coordinator Melakukan Approval
#    Scenario 14: Login PMU
#    Scenario 15: PMU Melakukan Approval
*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Username Consultant
    And Input Valid Password
    When Click button submit
    Verify Home Page Penanggung Jawab is open
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
#    Verify Nama Kegiatan
Scenario 5: User Mengklik Sorting Status
    Click Sorting Status
Scenario 6: Konsultan Melakukan Implementasi Kegiatan
    Click Button Lihat Kegiatan New
    Click Button Implementasi Kegiatan
    Input Data Umum
    Input Data Kegiatan
    Input Data Pelaksanaan
    Click Button Simpan
Scenario 7: User Mengklik Button Keluar dari detail kegiatan
    Click Button keluar
Scenario 8: User Mengklik Lihat Detail kegiatan
    Click Button Lihat Kegiatan
#    Verify Page Detail Kegiatan
Scenario 9: User Mengklik Button kembali dari page detail kegiatan
    Click Button Kembali
    Verify Page Kegiatan
Scenario 10: Consultan Logout
    User Logout
Scenario 11: Login Coordinator
    Given Login page is open
    Input Username Koordinator
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open
Scenario 12: Coordinator Melakukan Quality Entry
    Go To    http://pmrms.greatpmo.com/implement/kegiatan
    Scenario 4: User melakukan pencarian data by nama kegiatan
    Scenario 5: User Mengklik Sorting Status
    Click Button Lihat Kegiatan Perencanaan
    Coordinator Quality Entry
Scenario 13: Coordinator Melakukan Approval
    Click Button Setuju
    Input Catatan
    Click Button Kirim
Scenario 14: Login PMU
    Given Login page is open
    Input Username PMU
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open
Scenario 15: PMU Melakukan Approval
    Go To    http://pmrms.greatpmo.com/implement/kegiatan
    Scenario 4: User melakukan pencarian data by nama kegiatan
    Click Sorting Status Asc
    Click Button Lihat Menunggu Persetujuan
    Click Button Setuju
    Input Catatan Setuju
    Click Button Kirim










