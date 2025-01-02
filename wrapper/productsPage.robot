*** Settings ***
Resource    ../Custom/CustomSeleniumLibrary.robot
Library    ../utilities/READ.py

*** Variables ***
${PRODUCTS_YAML_FILE}    ./POM/products.yaml

*** Keywords ***
Initialization ProductsPage Variables
    ${ProdutsPage}=    read_yaml_file    ${PRODUCTS_YAML_FILE}
    Set Suite Variable    ${ProdutsPage}    ${ProdutsPage}

Click on 'Products' button
    Key Click Any Button    ${HomePage['Navigation_bar']['Products_lnk']}

Verify user is navigated to ALL PRODUCTS page successfully
    Key Verify Expected Text Is Visible    All Products

The products list is visible
    Key get product list    ${ProdutsPage['AllProducts_lst']}       35