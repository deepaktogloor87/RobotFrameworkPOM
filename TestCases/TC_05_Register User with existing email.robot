*** Settings ***
Resource    ../wrapper/homePage.robot
Resource    ../wrapper/loginPage.robot
Resource    ../wrapper/signupPage.robot
Resource    ../wrapper/accountCreatedPage.robot
Resource    ../wrapper/deleteAccountPage.robot

Suite Setup    Suite Initialization
Suite Teardown    Close Browser

*** Keywords ***
Suite Initialization
    Initialization HomePage Variables
    Initialization LoginPage Variables
    Initialization SignUpPage Variables
    Initialization AccountCreatedPage Variables
    Initialization DeleteAccountPage Variables

*** Test Cases ***
TC_005:Register User with existing email
    Launch browser
    Navigate to url 'http://automationexercise.com'
    Verify that home page is visible successfully
    Click on 'Signup / Login' button
    Verify 'New User Signup!' is visible
    Enter name and already registered email address
    Click 'Signup' button
    Verify error 'Email Address already exist!' is visible
