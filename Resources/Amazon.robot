*** Settings ***
Library  ../Libraries/MyCustomLibrary.py
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Search For Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    ${ReturnedInfo} =  SearchResults.Verify Search Completed
    log  ${ReturnedInfo}

Select Product from Search Results
    SearchResults.Click Product link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added
    Cart.Do Some Custom Thing

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded

