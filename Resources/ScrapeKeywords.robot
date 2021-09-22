*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
@{output}

*** Keywords ***
#Open page  [Arguments]  ${url}
#    Go To  ${url}

Search fields
    Wait Until Page Contains Element  //h1
    Run Keyword And Ignore Error  Find name
    Run Keyword And Ignore Error  Find website
    Run Keyword And Ignore Error  Find adress
    Run Keyword And Ignore Error  Find email
    Run Keyword And Ignore Error  Find phone

Find name
    Wait Until Page Contains Element  //h1
    ${name}  Get Text  //h1
    Append To List  ${output}  ${name}

Find website
    ${website}  Get Text  //*[./*[contains(@class, 'icon-home')]]/a
    Append To List  ${output}  ${website}

Find adress
    ${adress}  Get Text  //*[./*[contains(@class, 'icon-map-marker')]]
    Append To List  ${output}  ${adress}

Find email
    ${email}  Get Text  //*[./*[contains(@class, 'icon-email')]]/a
    Append To List  ${output}  ${email}

Find phone
    ${phone}  Get Text  //*[./*[contains(@class, 'icon-phone')]]
    Append To List  ${output}  ${phone}

Collect result
    ${name}  Get From List  ${output}  0

Back
    Go Back