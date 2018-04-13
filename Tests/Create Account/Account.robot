*** Settings ***
Documentation  Making an Amazon account to buy stuff
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/SignIn.robot
Resource  ../Resources/Account.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
User must create account to buy stuff
    [Documentation]  Create account test
    [Tags]  Smoke Account
    