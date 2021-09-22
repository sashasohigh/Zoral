*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Start TestCase
    Open Browser  ${base_url}  ${browser}
    Maximize Browser Window

Finish TestCase
    Close Browser