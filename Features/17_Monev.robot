*** Settings ***
Documentation  Regression Test Menu Monev
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/monev.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
#Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Menu Monev
    [Documentation]  Regression Menu Monev
    [Tags]  Functionality
    Scenario 1: Login with username valid and password valid
    Scenario 2: User Klik Menu Monev Longterm Target
    Scenario 3: User Klik View Longterm Target
    Scenario 4: User Klik Close View Longterm Target
    Scenario 5: User Klik Button Edit Longterm
    Scenario 6: User Pilih Indikator Klik Simpan Longterm Target
    Scenario 7: User Klik Menu Monev Midterm Target
    Scenario 8: User Klik View Midterm Target
    Scenario 9: User Klik Close View Midterm Target
    Scenario 10: User Klik Button Edit Midterm
    Scenario 11: User Pilih Indikator Klik Simpan Midterm Target
    Scenario 12: User Klik Menu Monev Intermediate Target
    Scenario 13: User Klik View Intermediate Target
    Scenario 14: User Klik Close View Intermediate Target
    Scenario 15: User Klik Button Edit Intermediate
    Scenario 16: User User Pilih Indikator Klik Simpan Intermediate Target
    Scenario 17: User klik button edit Output
    Scenario 18: User klik button kembali from edit output
    Scenario 19: User mengklik tambah output, mengisi form output kegiatan
    Scenario 20: User Klik Button Kembali from page indikator keberhasilan

*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Valid Username
    And Input Valid Password
    When Click button submit
    Then Verify Home Page is open
Scenario 2: User Klik Menu Monev Longterm Target
    Click Monev Longterm target
Scenario 3: User Klik View Longterm Target
    Click View Target
Scenario 4: User Klik Close View Longterm Target
    Click Close View
Scenario 5: User Klik Button Edit Longterm
    Click Button Edit
Scenario 6: User Pilih Indikator Klik Simpan Longterm Target
    Pilih indikator longterm
    Click Button Lanjut
    Click Button Simpan
Scenario 7: User Klik Menu Monev Midterm Target
    Click Monev Midterm Output Target
Scenario 8: User Klik View Midterm Target
    Click View Target
Scenario 9: User Klik Close View Midterm Target
    Click Close View
Scenario 10: User Klik Button Edit Midterm
    Click Button Edit
Scenario 11: User Pilih Indikator Klik Simpan Midterm Target
   Pilih indikator midterm
   Click Button Lanjut
   Click Button Simpan
Scenario 12: User Klik Menu Monev Intermediate Target
    Click Monev Intermediate Output Target
Scenario 13: User Klik View Intermediate Target
    Click View Target
Scenario 14: User Klik Close View Intermediate Target
    Click Close View
Scenario 15: User Klik Button Edit Intermediate
    Click Button Edit
Scenario 16: User User Pilih Indikator Klik Simpan Intermediate Target
    Pilih indikator intermediate
    Click Button Lanjut
    Click Button Simpan
Scenario 17: User klik button edit Output
    Click Edit Monev output
Scenario 18: User klik button kembali from edit output
    Click Button Kembali
Scenario 19: User mengklik tambah output, mengisi form output kegiatan
    Click Button Tambah Output indikator keberhasilan
Scenario 20: User Klik Button Kembali from page indikator keberhasilan
    Click Button Kembali