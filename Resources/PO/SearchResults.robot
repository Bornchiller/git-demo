*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "Ferrari 458"  10s
    [Return]  Found it

Click Product link
    Click Link  xpath=//*[@id="result_2"]/div/div/div/div[2]/div[1]/div[1]/a