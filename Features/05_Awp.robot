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
    Scenario 2: User mengklik sidebar menu awp
#    Scenario 3: User mengklik button index page untuk melihat data selanjutnya
#    Scenario 4: User mengklik field search input by Nama Kegiatan
#    Scenario 5: User mengklik field search input by Pagu Anggaran Awp
#    Scenario 6: User mengklik field search input by Komponen Awp
#    Scenario 7: User menginputkan karakter dan angka tidak sesuai

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
    Verify Pagination AWP
Scenario 4: User mengklik field search input by Nama Kegiatan
    Input Search by Nama kegiatan AWP
    Click Button Cari
    Verify Search AWP
Scenario 5: User mengklik field search input by Pagu Anggaran Awp
    Input Search by Pagu Anggaran AWP
    Click Button Cari
    Verify Pagu Anggaran Awp
Scenario 6: User mengklik field search input by Komponen Awp
    Input Search by Komponen AWP
    Click Button Cari
    Verify komponen Awp
Scenario 7: User menginputkan karakter dan angka tidak sesuai
    Input Search Karakter Angka Tidak sesuai
    Click Button Cari
    Verify No Data





