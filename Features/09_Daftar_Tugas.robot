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
    Scenario 1: Input Valid Username role komponen 4
    Scenario 2: User mengklik menu Daftar Tugas
    Scenario 3: User Melakukan pencarian di tab tugas saya
    Scenario 4: User Melakukan pencarian di tab penugasan saya
    Scenario 5: User Mengklik Lihat Tugas Pada Tab Tugas Saya
    Scenario 6: User Mengklik Button Kembali dari page detail tugas
#    Scenario 7: User Mengklik Button Simpan dari Detail Tugas
    Scenario 8: User Mengklik Button Batal dari detail tugas
    Scenario 9: User Mengklik Lihat Tugas Pada Tab Penugasan Saya
    Scenario 10: User Mengklik Button Kembali dari detail tugas penugasan
    Scenario 11. User Mengklik Button Edit Lalu Simpan
    Scenario 12: User Mengklik Tab Penugasan lalu buat tugas
    Scenario 13: User Menginput Tambah Tugas Lalu klik Simpan
*** Keywords ***
Scenario 1: Input Valid Username role komponen 4
    Given Login page is open
    Input Valid Username role komponen 4
    And Input Valid Password
    When Click button submit
    Then Verify Home Page Penanggung Jawab is open
Scenario 2: User mengklik menu Daftar Tugas
    Click Menu Profile
    Click Button Daftar Tugas
    Verify Page Daftar Tugas
Scenario 3: User Melakukan pencarian di tab tugas saya
    Input Tugas Pada Tab Tugas Saya
    Click Button Cari
    Verify Searching Tugas
Scenario 4: User Melakukan pencarian di tab penugasan saya
    Go To    http://pmrms.greatpmo.com/task/list-task
    Click Tab Penugasan
    Input Tugas Pada Tab Penugasan
    Click Button Cari
    Verify Searching Penugasan
Scenario 5: User Mengklik Lihat Tugas Pada Tab Tugas Saya
    Click Buttton Lihat Tugas
    Verify Detail Tugas
Scenario 6: User Mengklik Button Kembali dari page detail tugas
    Click Button Kembali
    Verify Page Daftar Tugas
Scenario 7: User Mengklik Button Simpan dari Detail Tugas
    Click Buttton Lihat Tugas
    Verify Detail Tugas
    Click Button Simpan
    Verify Page Daftar Tugas
Scenario 8: User Mengklik Button Batal dari detail tugas
    Click Buttton Lihat Tugas
    Verify Detail Tugas
    Click Button Keluar
    Verify Page Daftar Tugas
Scenario 9: User Mengklik Lihat Tugas Pada Tab Penugasan Saya
    Click Tab Penugasan
    Click Buttton Lihat Tugas
    Verify Detail Tugas
Scenario 10: User Mengklik Button Kembali dari detail tugas penugasan
    Click Button Kembali
    Verify Page Daftar Tugas
Scenario 11. User Mengklik Button Edit Lalu Simpan
    Click Tab Penugasan
    Click Buttton Lihat Tugas
    Verify Detail Tugas
    Click Button Edit
    Click Button Simpan
    Verify Detail Tugas
Scenario 12: User Mengklik Tab Penugasan lalu buat tugas
    Go To    http://pmrms.greatpmo.com/task/list-task
    Click Tab Penugasan
    Click Button Buat Tugas
    Verify Element Page Buat Tugas
Scenario 13: User Menginput Tambah Tugas Lalu klik Simpan
    Pilih Nama Penerima Tugas
    Input Judul Tugas
    Input Tanggal Tugas
    Input Deskripsi Tugas
    Pilih PDO
    Pilih IRI
    Click Button Simpan





