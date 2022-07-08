*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.guru99.com/test/newtours/register.php
${browser}  chrome



*** Test Cases ***
LinksTest

        Open Browser  ${url}  ${browser}
        Maximize Browser Window
        ${linkscount}=  Get Element Count  xpath://a  
        Log To Console  ${linkscount}  

        #create list wth @ 
        @{linklist}=  Create List 

        FOR  ${i}  IN RANGE     1   ${linkscount}
        ${text}=  Get Text  xpath:(//a)[${i}]
        log to console   ${text}
        END 