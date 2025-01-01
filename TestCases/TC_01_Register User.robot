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
TC_001:User Registration
    Launch browser
    Navigate to url 'http://automationexercise.com'
    Verify that home page is visible successfully
    Click on 'Signup / Login' button
    Verify 'New User Signup!' is visible
    Enter name and email address
    Click 'Signup' button
    Verify that 'ENTER ACCOUNT INFORMATION' is visible
    Fill details: Title, Name, Email, Password, Date of birth
    Select checkbox 'Sign up for our newsletter!'
    Select checkbox 'Receive special offers from our partners!'
    Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    Click 'Create Account button'
    Verify that 'ACCOUNT CREATED!' is visible
    Click 'Continue' button
    Verify that 'Logged in as username' is visible
    Click 'Delete Account' button
    Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button