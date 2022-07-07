*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome

*** Test Cases ***
register
${timeout}=  get selenium timeout
log to console  ${timeout}
        Open Browser  ${url}  ${browser}
        Maximize Browser Window 
        #implicit wait will wait max for 10 seconds
        Set Selenium Implicit Wait  10 seconds

        #Set Selenium Timeout  10 seconds
       #Wait Until Page Contains  Register
       #it will find page contains text register then will continue
       #default time is 5 sec
        Select Radio Button  Gender  gender-female
        Input Text  id:FirstName  astha80
        Input Text  LastName  jain
        Input Text  Email  asthajain80@gmail.com
        Input Text  Password  asthajain13@
        Input Text  ConfirmPassword  asthajain13@
        Click Button  id:register-button 

