*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/LoginKeywords.robot
Resource  ../../Resources/SearchKeywords.robot
Resource  ../../Resources/ScrapeKeywords.robot
Resource  ../../Resources/CollectScrapingKeywords.robot


*** Variables ***
${browser}          chrome
${base_url}         https://www.aihitdata.com/
${login}            hiphopesthete@gmail.com
${password}         bKTCsSJX4Dd$3yN
${industry}         mortgage
${location}         US

*** Test Cases ***
Login
    [Documentation]  This test login case
    [Tags]  Functional
    Start TestCase
    Login

Search
    [Documentation]  This test search case
    [Tags]  Functional
    Verify Search Results

Collect scraping
    [Documentation]  This test collect scrape case
    [Tags]  Functional
    Collect
    Show Results
    Finish TestCase