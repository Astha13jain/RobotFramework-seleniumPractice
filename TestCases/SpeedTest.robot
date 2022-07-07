*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
register
${speed}=  get selenium speed
log to console  ${speed}
        Open Browser  ${url}  ${browser}
        Maximize Browser Window 
        #set selenium speed is for all statements by default s 0
        Set Selenium Speed  3 seconds
        Select Radio Button  Gender  gender-female
        Input Text  id:FirstName  astha80
        Input Text  LastName  jain
        Input Text  Email  asthajain80@gmail.com
        Input Text  Password  asthajain13@
        Input Text  ConfirmPassword  asthajain13@
        Click Button  id:register-button 

${speed}=  get selenium speed
log to console  ${speed}