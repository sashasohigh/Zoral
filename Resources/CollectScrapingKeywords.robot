*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  ScrapeKeywords.robot

*** Variables ***


*** Keywords ***
Collect
    ${links} =  SeleniumLibrary.Get Element Count  //html/body/div[2]/div[2]/div[2]/div/div/div[contains(@class, 'panel-default')]//a
    Log  ${links}
    FOR  ${index}  IN RANGE  ${links}
        ${url} =  Evaluate  ${index} + 1
        Log  ${url}
        Wait Until Page Contains Element  //html/body/div[2]/div[2]/div[1]/div/div/form[1]/button
        ${new_link} =  Get WebElement  //html/body/div[2]/div[2]/div[2]/div/div/div[contains(@class, 'panel-default')][${url}]//a
        ${text}  Get Element Attribute  ${new_link}  href
        Go To  ${text}
        Search fields
        Collect result
        Go Back
    END

Show Results
    Log Many  @{output}