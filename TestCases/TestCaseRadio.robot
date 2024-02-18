*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://artoftesting.com/samplesiteforselenium

*** Test Cases ***
RadioButtonTest and CheckBoxTest
    open browser   ${url}    ${browser}
    maximize browser window
    set selenium speed    2seconds

    # Radio Button Code
    select radio button    gender    male
    select radio button    gender    female

    # Check Box Code
    select checkbox    Automation
    select checkbox    Performance

    unselect checkbox    Performance

*** Keywords ***
