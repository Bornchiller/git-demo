*** Settings ***
Documentation  Making an Amazon account to buy stuff
Resource  ../Resources/Common.robot
Resource  ../Resources/Account.robot
Resource  ../Resources/PO/SignIn.robot
Resource  ../Resources/PO/LandingPage.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
User is new customer
    [Documentation]  Go to create account form
    [Tags]  Smoke  Account
    LandingPage.Load
    LandingPage.Verify Page Loaded
    SignIn.Select Sign In
    SignIn.Select Option for New Customer

User must create account to buy stuff
    [Documentation]  Create account test
    [Tags]  Smoke



