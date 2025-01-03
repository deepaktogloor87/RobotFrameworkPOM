*** Settings ***
Resource    ../wrapper/homePage.robot

Suite Setup    Suite Initialization
Suite Teardown    Close Browser

*** Keywords ***
Suite Initialization
    Initialization HomePage Variables

*** Test Cases ***
TC_010:Verify Subscription in home page
    Launch browser
    Navigate to url 'http://automationexercise.com'
    Verify that home page is visible successfully
    Scroll down to footer
    Verify text 'SUBSCRIPTION'
    Enter email address in input and click arrow button
    Verify success message 'You have been successfully subscribed!' is visible