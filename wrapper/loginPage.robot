*** Settings ***
Resource    ../Custom/CustomSeleniumLibrary.robot
Library    ../utilities/READ.py

*** Variables ***
${ENV_FILE}    .env
${LOGIN_YAML_FILE}    ./POM/login.yaml

*** Keywords ***
Initialization LoginPage Variables
    ${env}=    read_env_file    ${ENV_FILE}
    set suite variable    ${env}    ${env}
    ${LoginPage}=    read_yaml_file    ${LOGIN_YAML_FILE}
    Set Suite Variable    ${LoginPage}    ${LoginPage}

Verify 'New User Signup!' is visible
    Key Verify Expected Text Is Visible    New User Signup!

Enter name and email address
    Key Enter Username And Password
    ...     ${LoginPage['New_User_Signup']['Name_txtbx']}               ${env['CRED']['USERNAME']}
    ...     ${LoginPage['New_User_Signup']['Eamil_Address_txtbx']}      ${env['CRED']['EMAIL']}

Click 'Signup' button
    Key Click Any Button    ${LoginPage['New_User_Signup']['SignUp_btn']}