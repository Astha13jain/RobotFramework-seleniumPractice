*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm  

*** Test Cases ***

Dropdown Test
#check dropdown name and its value 
        Open Browser  ${url}  ${browser}
        Maximize Browser Window 
        Select From List By Label  continents  Europe 
        sleep  3
        Select From List By Index  continents  4
        Select From List By Label  selenium_commands  Switch Commands
        Select From List By Label  selenium_commands  Wait Commands

        Unselect From List By Label  selenium_commands  Wait Commands