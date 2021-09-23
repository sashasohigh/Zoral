*** Settings ***

Library  SeleniumLibrary
Library  Collections
Resource  ScrapeKeywords.robot

*** Variables ***


*** Keywords ***
Collect
    ${count} =  SeleniumLibrary.Get Element Count  //html/body/div[2]/div[2]/div[2]/div/div/div[contains(@class, 'panel-default')]//a
    FOR  ${element}  IN RANGE  ${count}
        ${index} =  Evaluate  ${element} + 1
        Wait Until Page Contains Element  //html/body/div[2]/div[2]/div[1]/div/div/form[1]/button
        ${new_link} =  Get WebElement  //html/body/div[2]/div[2]/div[2]/div/div/div[contains(@class, 'panel-default')][${index}]//a
        ${url}  Get Element Attribute  ${new_link}  href
        Go To  ${url}
        Search fields
        Collect result
        Go Back
    END

Show Results
    Log Many  @{output}