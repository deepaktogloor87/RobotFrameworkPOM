*** Settings ***
Resource    ../wrapper/homePage.robot
Resource    ../wrapper/productsPage.robot


Suite Setup    Suite Initialization
Suite Teardown    Close Browser

*** Keywords ***
Suite Initialization
    Initialization HomePage Variables
    Initialization ProductsPage Variables

*** Test Cases ***
TC_009:Search Product
    Launch browser
    Navigate to url 'http://automationexercise.com'
    Verify that home page is visible successfully
    Click on 'Products' button
    Verify user is navigated to ALL PRODUCTS page successfully
    Enter product name in search input and click search button
    Verify 'SEARCHED PRODUCTS' is visible
    Verify all the products related to search are visible