*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demo.automationtesting.in/Windows.html
${browser}  chrome


*** Test Cases ***
TabbedTest

        Open Browser  ${url}  ${browser}
        Maximize Browser Window 
        Click Button  xpath://*[@class="btn btn-info"]   
        Switch Window  title=Frames & windows 
        Click Link  Home 