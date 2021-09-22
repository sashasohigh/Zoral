*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Login
    Wait Until Page Contains Element  //html/body/div[2]/nav/div/div[2]/div/a[2]
    Click Link  //html/body/div[2]/nav/div/div[2]/div/a[2]
    Input Text  id:email  ${login}
    Input Password  id:password  ${password}
    Click Element  id:submit

