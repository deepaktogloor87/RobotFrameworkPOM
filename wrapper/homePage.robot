*** Settings ***
Resource    ../Custom/CustomSeleniumLibrary.robot
Library    ../utilities/READ.py

*** Variables ***
${ENV_FILE}    .env
${COMMON_YAML_FILE}    ./POM/common.yaml
${BROWSER}    Chrome

*** Keywords ***
Initialization HomePage Variables
    ${env}=    read_env_file    ${ENV_FILE}
    set suite variable    ${env}    ${env}
    ${HomePage}=    read_yaml_file    ${COMMON_YAML_FILE}
    Set Suite Variable    ${HomePage}    ${HomePage}

Launch browser
    Key Launch Browser      ${BROWSER}

Navigate to url 'http://automationexercise.com'
    Key Navigate To Url    ${env['BASIC']['URL']}

Verify that home page is visible successfully
    Key Verify That Expected Element Is Visible Successfully    ${HomePage['Navigation_bar']['Home_lnk']}

Click on 'Signup / Login' button
    Key Click Any Button    ${HomePage['Navigation_bar']['SignUp_Login_lnk']}

Verify that 'Logged in as username' is visible
    Key Verify That Expected Element Is Visible Successfully    ${HomePage['Navigation_bar']['UserName_lnk']}

Click on 'Logout' button
    Key Click Any Button    ${HomePage['Navigation_bar']['Logout_lnk']}

Verify that 'Logged out successfully' is visible
    Key Verify That Expected Element Is Visible Successfully    ${HomePage['Navigation_bar']['Logout_Success_txt']}

Click 'Delete Account' button
    Key Click Any Button    ${HomePage['Navigation_bar']['DeleteAccount_lnk']}

