*** Settings ***
Library  SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/
${username}    pavanoltraining@gmail.com
${pass}     Test@123

*** Test Cases ***
LoginTest
    #create webdriver  ${browser}    executable_path="/Users/b0272081/Downloads/chrome-mac-arm64/Google Chrome for Testing"
    open browser    ${url}  ${browser}
    Login to Application
    close browser

*** Keywords ***
Login to Application
    click link    xpath://a[@class='ico-login']
    input text    id:Email   ${username}
    input text    id:Password    ${pass}
    click element    xpath://button[@class="button-1 login-button"]
