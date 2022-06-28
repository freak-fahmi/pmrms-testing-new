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
    Scenario 24: Go to Detail Event
    Scenario 25: Sort Status
    Scenario 5: Coordinator Mengklik Lihat Detail Event
    Scenario 6: User mengklik button Tab laporan event
#    Scenario 7: User Mengklik Detail Laporan Event
#    Scenario 8: User Mengklik History Pada Detail Laporan Event
    Scenario 9: User Mengklik Button Kembali dari Page detail laporan Event
#    Scenario 10: User Mengklik Button kembali dari page detail event
    Scenario 11: User Mnegklik Button Keluar dari page detail event
    Scenario 12: User mengklik button kalender event
    Scenario 13: Konsultan Tambah Concept Note
    Scenario 14: Konsultan Input Data Umum
    Scenario 15: Konsultan input Data Pelaksanaan dan Simpan
    Scenario 16: Login Coordinator untuk approval
    Scenario 24: Go to Detail Event
    Scenario 25: Sort Status
    Scenario 5: Coordinator Mengklik Lihat Detail Event
    Scenario 17: Coordinator Melakukan Approval Setuju
    Scenario 18: Login Bendahara/Treasure
    Scenario 19: Bendahara/Treasure Mengklik Lihat Detail Event
    Scenario 20: Bendahara/Treasure Melakukan Approval Setuju
    Scenario 21: Login PMU
    Scenario 22: PMU Mengklik Lihat Detail Event
    Scenario 23: PMU Melakukan Approval Setuju


*** Keywords ***
Scenario 1: Login with username valid and password valid
    Given Login page is open
    And Input Username Consultant
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
Scenario 24: Go to Detail Event
    Go To    http://pmrms.greatpmo.com/activity/event
Scenario 25: Sort Status
    Wait Until Element Is Visible    //th[text()='Status']      timeout=30s
    Click Element    //th[text()='Status']
Scenario 5: Coordinator Mengklik Lihat Detail Event
#    Go To    http://pmrms.greatpmo.com/activity/event
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
Scenario 13: Konsultan Tambah Concept Note
    Click Button Tambah Concept Note
    Click Button Pilih
    Pilih Concept Note
    Click Element Buat Concept Note
Scenario 14: Konsultan Input Data Umum
    Input Nama Event
    Click Button Lanjut
    Input Waktu Pelaksanaan kegiatan
    Pilih Tempat pelaksanaan
    Input Lokasi
    Tambah Peserta Pelaksana
    Click Button Lanjut
Scenario 15: Konsultan input Data Pelaksanaan dan simpan
    Input Latar Belakang Event
    Input Deskripsi Event
    Input Tujuan Event
    Input Output Event
    Input Jumlah Peserta
    Submit Agenda Event
    Pilih Narahubung
    Submit RAB Kegiatan
    Click Button Simpan
    Close Browser
Scenario 16: Login Coordinator untuk approval
    Given Login page is open
    Input Username Koordinator
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open
Scenario 17: Coordinator Melakukan Approval Setuju
    Click Button Setuju
    Input Reason Setuju
    Click Button Kirim
Scenario 18: Login Bendahara/Treasure
    Given Login page is open
    Input Username Bendahara Treasure
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open
Scenario 19: Bendahara/Treasure Mengklik Lihat Detail Event
    Go To    http://pmrms.greatpmo.com/activity/event
    Bendahara Click Button Lihat Event
    Verify Page Detail Event
Scenario 20: Bendahara/Treasure Melakukan Approval Setuju
    Click Button Setuju
    Click Radio Button Ada Anggaran
    Input Reason Setuju
    Click Button Kirim
Scenario 21: Login PMU
    Given Login page is open
    Input Username PMU
    Input Valid Password
    Click button submit
    Verify Home Page Penanggung Jawab is open
Scenario 22: PMU Mengklik Lihat Detail Event
    Go To    http://pmrms.greatpmo.com/activity/event
    PMU Click Button Lihat Event
    Verify Page Detail Event
Scenario 23: PMU Melakukan Approval Setuju
    Click Button Setuju
    Input Reason Setuju
    Click Button Kirim















