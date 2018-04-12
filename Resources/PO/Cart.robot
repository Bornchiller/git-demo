*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart  30s

Proceed to Checkout
    Click Link  xpath=//*[@id="hlb-ptc-btn-native"]

Do Some Custom Thing
    Do Something Special