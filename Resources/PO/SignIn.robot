*** Settings ***
Library  Selenium2Library

*** Keywords ***
Select Sign In
    Mouse Over  xpath=//*[@id="nav-link-accountList"]
    Page Should Contain  Start here

Select Option for New Customer
    Click Link  Start here
    Wait Until Page Contains  Create account  3s

Verify Page loaded
    Page Should Contain  Sign In