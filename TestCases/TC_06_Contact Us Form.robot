*** Settings ***
Resource    ../wrapper/homePage.robot
#Resource    ../wrapper/loginPage.robot
#Resource    ../wrapper/signupPage.robot
#Resource    ../wrapper/accountCreatedPage.robot
#Resource    ../wrapper/deleteAccountPage.robot
Resource    ../wrapper/contactusPage.robot

Suite Setup    Suite Initialization
Suite Teardown    Close Browser

*** Keywords ***
Suite Initialization
    Initialization HomePage Variables
#    Initialization LoginPage Variables
#    Initialization SignUpPage Variables
#    Initialization AccountCreatedPage Variables
#    Initialization DeleteAccountPage Variables
    Initialization ContactUsPage Variables

*** Test Cases ***
TC_006:Contact Us Form
    Launch browser
    Navigate to url 'http://automationexercise.com'
    Verify that home page is visible successfully
    Click On Contact Us button
    Verify 'Get In Touch' is visible
    Enter name, email, subject and message
    Upload file
    Click Submit button
    Click OK button
    Verify success message 'Success! Your details have been submitted successfully.' is visible
    Click 'Home' button and verify that landed to home page successfully