*** Settings ***
Resource    ../wrapper/homePage.robot
Resource    ../wrapper/testcasesPage.robot

Suite Setup    Suite Initialization
Suite Teardown    Close Browser

*** Keywords ***
Suite Initialization
    Initialization HomePage Variables

*** Test Cases ***
TC_007:Verify Test Cases Page
    Launch browser
    Navigate to url 'http://automationexercise.com'
    Verify that home page is visible successfully
    Click on 'Test Cases' button
    Verify user is navigated to test cases page successfully
