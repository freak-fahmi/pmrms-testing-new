*** Settings ***
Documentation  Regression Test Menu AWP
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/awp.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Menu AWP
    [Documentation]  Regression Menu AWP
    [Tags]  Functionality
    Scenario 1: Login with username valid and password valid
    #Sprint 6
    Scenario 2: User mengklik sidebar menu awp
    Scenario 3: User mengklik button index page untuk melihat data selanjutnya
    Scenario 4: User mengklik field search input by Nama Kegiatan
    Scenario 5: User mengklik field search input by Pagu Anggaran Awp
    Scenario 6: User Mengklik Detail Awp
    Scenario 7: User Mengklik Button Kembali dari detail awp
    Scenario 8: User mengklik field search input by Komponen Awp
    Scenario 9: User menginputkan karakter dan angka tidak sesuai
    #Sprint6
    Scenario 10: User Mengklik Button Tambah AWP
    Scenario 11: User menginput data pada form lalu melakukan save
    Scenario 12: User Mengklik Button Kembali dari page tambah awp
    Scenario 13: User Mengklik Button Batal dari page tambah awp


*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario 2: User mengklik sidebar menu awp
    Click Menu AWP
    Verify Page AWP
Scenario 3: User mengklik button index page untuk melihat data selanjutnya
    Click Pagination AWP
#    Verify Pagination AWP
Scenario 4: User mengklik field search input by Nama Kegiatan
    Input Search by Nama kegiatan AWP
    Click Button Cari
    Verify Search AWP
Scenario 5: User mengklik field search input by Pagu Anggaran Awp
    Input Search by Pagu Anggaran AWP
    Click Button Cari
#    Verify Pagu Anggaran Awp
Scenario 6: User Mengklik Detail Awp
    Click Detail Awp
    Verify Detail Awp
Scenario 7: User Mengklik Button Kembali dari detail awp
    Click Button Kembali
    Verify Page AWP
Scenario 8: User mengklik field search input by Komponen Awp
    Input Search by Komponen AWP
    Click Button Cari
#    Verify komponen Awp
Scenario 9: User menginputkan karakter dan angka tidak sesuai
    Input Search Karakter Angka Tidak sesuai
    Click Button Cari
    Verify No Data
Scenario 10: User Mengklik Button Tambah AWP
    Click Button Tambah AWP
    Verify Page Tambah AWP
Scenario 11: User menginput data pada form lalu melakukan save
    Input Data Umum
    Input Data Kegiatan
    Input Data Pelaksanaan 1
    Input Data Pelaksanaan 2
Scenario 12: User Mengklik Button Kembali dari page tambah awp
    Click Button Tambah AWP
    Verify Page Tambah AWP
    Click Button Kembali
    Verify Page AWP
Scenario 13: User Mengklik Button Batal dari page tambah awp
    Click Button Tambah AWP
    Click Button Batal
    Verify Page AWP





