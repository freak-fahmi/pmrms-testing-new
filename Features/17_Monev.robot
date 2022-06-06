** Settings ***
Documentation  Regression Test Menu Monev
Library     SeleniumLibrary
Resource    ../Keyword/browser.robot
Resource    ../Keyword/monev.robot
Resource    ../Keyword/login.robot

#Test Setup  Open Browser
Test Teardown   Finish Testcase

*** Variables ***


*** Test Cases ***
Menu Monev
    [Documentation]  Regression Menu Monev
    [Tags]  Functionality
    Scenario 1: Login with username valid and password valid
    Scenario 2: User Klik Menu Monev Longterm Target
    Scenario 3: User Klik View Longterm Target
    Scenario 4: User Klik Close View Longterm Target

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
    Click View Longterm Target
Scenario 4: User Klik Close View Longterm Target
    Click Close View Longterm