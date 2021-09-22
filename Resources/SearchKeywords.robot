*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text      id:industry    ${industry}
    Input Text      id:location    ${location}
    Click Element   //html/body/div[2]/div/div[2]/div/div/form/button

