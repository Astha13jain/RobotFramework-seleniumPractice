*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  chrome
${url1}  https://google.com

*** Test Cases ***
Login To Site
        Open the browser
        Maximize Browser Window  
        Login To HRMSite
        Welcome Page should Open
        Click on Admin 
        Close Browser  
        

*** Keywords ***
Open the browser
        
        Open browser  ${url}  ${browser}

Login To HRMSite

    Input Text  xpath://*[@id='txtUsername']  Admin
   # Input Text  xpath://*[@id='txtPassword']  admin123
    Input Text  id:txtPassword  admin123
    Click Button  xpath://*[@id='btnLogin']

Welcome Page should Open

       Title Should Be  OrangeHRM

Click on Admin 

       Click Link  xpath://*[@id='menu_admin_viewAdminModule']
       Input Text  xpath://*[@id='searchSystemUser_userName']  astha
       Input Text  xpath://*[@id='searchSystemUser_employeeName_empName']  ajain
       Click Button  xpath://*[@id='searchBtn']



            