*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
Testing textinputbox

    open browser  ${url}  ${browser}
    Maximize browser Window
    title should be  nopCommerce demo store
    click Link  xpath://*[@class='ico-login']
    ${"email_text"}  set variable  id:Email 
   Element Should Be Visible  ${"email_text"}
   Element Should Be Enabled  ${"email_text"}

   Input Text  ${"email_text"}  asthajain80@gmail.com
   sleep  5
   Clear Element Text  ${"email_text"}
   sleep  3
   Close Browser  
