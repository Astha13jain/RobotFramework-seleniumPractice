*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://demo.guru99.com/test/newtours/reservation.php
${browser}  chrome
${url1}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Test Radio Buttons
        Open Browser  ${url}  ${browser}
       # Maximize Browser Window  
        #to set speed for each element 2
        Set Selenium Speed  2seconds
        #select radio button by giving locator name and locator value
        Select Radio Button  servClass  Business
        Select Radio Button  tripType  oneway
        Close Browser  
        #checkboxes
        Open Browser  ${url1}  ${browser}
        Select Checkbox  Manual Tester
        Unselect Checkbox  Manual Tester