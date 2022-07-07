*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome
${url1}  https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
CloseTest

        Open Browser  ${url}  ${browser}
        Maximize Browser Window 

        Open Browser  ${url1}  ${browser}
        Maximize Browser Window 
        
        Close All Browsers  