*** Settings ***
Resource    ../wrapper/homePage.robot
Resource    ../wrapper/loginPage.robot
Resource    ../wrapper/signupPage.robot
Resource    ../wrapper/accountCreatedPage.robot
Resource    ../wrapper/deleteAccountPage.robot

Suite Setup    Suite Initialization
Suite Teardown    Close browser

*** Keywords ***
Suite Initialization
    Initialization HomePage Variables
    Initialization LoginPage Variables
    Initialization SignUpPage Variables
    Initialization AccountCreatedPage Variables
    Initialization DeleteAccountPage Variables

*** Test Cases ***
TC_003:Login User with incorrect email and incorrect password
    Launch browser
    Navigate to url 'http://automationexercise.com'
    Verify that home page is visible successfully
    Click on 'Signup / Login' button
    Verify 'Login to your account' is visible
    Enter incorrect email address and incorrect password
    Click 'Login' button
    Verify Your email or password is incorrect! message is visible