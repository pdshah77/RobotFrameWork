*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/


*** Test Cases ***
InputBoxTest
    open browser    ${url}    ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link    xpath://a[@class='ico-login']
    ${email_txt}    set variable    id:Email

    element should be visible    ${email_txt}
    element should be enabled    ${email_txt}

    input text    ${email_txt}    Test@gmail.com
    sleep    5
    clear element text    ${email_txt}
    sleep    5
    close browser


*** Keywords ***
