*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome


*** Test Cases ***
AlertTest

        Open Browser  ${url}  ${browser}
        Maximize Browser Window 

        Click Button  xpath://*[@id="HTML9"]/div[1]/button 
        sleep  3 
       # Handle Alert  accept  
       # Handle Alert  dismiss  
       #if you want alert window to remain open use leave
      # Handle Alert  leave
      Alert Should Be Present  Press a button!