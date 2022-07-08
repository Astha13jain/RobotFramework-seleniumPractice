*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.google.com
${browser}  chrome
${url1}   http://demo.automationtesting.in/Windows.html


*** Test Cases ***
MultipleTest

        Open Browser  ${url}  ${browser}
        Maximize Browser Window 

        sleep  3

        Open Browser  ${url1}  ${browser}
        Maximize Browser Window 
#to switch between browser use indexes from 1.
        Switch Browser  1
        ${title}=  get title
        Log To Console  ${title} 

        Switch Browser  2
        ${title1}=  get title
        Log To Console  ${title1} 

