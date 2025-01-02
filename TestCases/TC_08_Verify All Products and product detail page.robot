*** Settings ***
Resource    ../wrapper/homePage.robot
Resource    ../wrapper/productsPage.robot
Resource    ../wrapper/productdetailsPage.robot

Suite Setup    Suite Initialization
Suite Teardown    Close Browser

*** Keywords ***
Suite Initialization
    Initialization HomePage Variables
    Initialization ProductsPage Variables
    Initialization ProductsdetailsPage Variables

*** Test Cases ***
TC_008:Verify All Products and product detail page
    Launch browser
    Navigate to url 'http://automationexercise.com'
    Verify that home page is visible successfully
    Click on 'Products' button
    Verify user is navigated to ALL PRODUCTS page successfully
    The products list is visible
    Click on 'View Product' of first product
    Verify that detail detail is visible: product name, category, price, availability, condition, brand


