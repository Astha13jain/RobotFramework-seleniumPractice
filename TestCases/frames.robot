*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.selenium.dev/selenium/docs/api/java/index.html?help-doc.html
${browser}  chrome


*** Test Cases ***
FramesTest

        Open Browser  ${url}  ${browser}
        Maximize Browser Window 

        Select Frame  packageListFrame
        click link  org.openqa.selenium
        #to move to next frame first unselect frame then move 
        Unselect Frame  
        Select Frame  packageFrame
        click link  WebDriver
        Unselect Frame 
        Select Frame  classFrame 
        click link  Index
        Unselect Frame  
        
        Close Browser  