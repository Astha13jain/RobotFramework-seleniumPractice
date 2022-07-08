*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.google.com
${browser}  chrome

*** Test Cases ***
Key Test
    SeleniumLibrary.Open Browser  ${url}  ${browser}
    ${location}=  Get Location 
    log to console  ${location}

#to go to next url use go to
    Go To  http://demo.automationtesting.in/Windows.html 
    ${location}=  Get Location 
    log to console  ${location}
    
#to go back to previous urrl use go back

    Go Back
    ${location}=  Get Location 
    log to console  ${location}  