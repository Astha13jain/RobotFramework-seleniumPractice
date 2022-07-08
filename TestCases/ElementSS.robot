*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  chrome
${url1}   http://demo.automationtesting.in/Windows.html


*** Test Cases ***
ScreenshotTest

        Open Browser  ${url}  ${browser}
        Maximize Browser Window 
        Input Text  id:txtUsername  Admin
        Input Text  id:txtPassword  admin123
    #file name is logo
       # Capture Element Screenshot  id:divLogo  C:/robotpractice/logo.png
        #Capture Page Screenshot  C:/robotpractice/page.png

         Capture Element Screenshot  id:divLogo  logo.png
        Capture Page Screenshot   page.png