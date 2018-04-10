*** Settings ***
Library  Selenium2Library
Resource  ..\Resources\PO\Amazon.robot

*** Variables ***


*** Test Cases ***
    [Tags]  Smoke Products
    Amazon.Search for Products


