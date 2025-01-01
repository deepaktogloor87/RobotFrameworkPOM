*** Settings ***
Resource    ../wrapper/homePage.robot
Resource    ../wrapper/loginPage.robot
Resource    ../wrapper/signupPage.robot
Resource    ../wrapper/accountCreatedPage.robot
Resource    ../wrapper/deleteAccountPage.robot

Suite Setup    Suite Initialization

*** Keywords ***
Suite Initialization
    Initialization HomePage Variables
    Initialization LoginPage Variables
    Initialization SignUpPage Variables
    Initialization AccountCreatedPage Variables
    Initialization DeleteAccountPage Variables

*** Test Cases ***
TC_004:Logout User
    Launch browser
    Navigate to url 'http://automationexercise.com'
    Verify that home page is visible successfully
    Click on 'Signup / Login' button
    Verify 'Login to your account' is visible
    Enter correct email address and password
    Click 'Login' button
    Verify that 'Logged in as username' is visible
    Click on 'Logout' button