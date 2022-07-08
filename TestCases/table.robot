*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${browser}  chrome



*** Test Cases ***
TableTest

        Open Browser  ${url}  ${browser}
        Maximize Browser Window
      ${rowscount}=  Get Element Count   xpath://table[@name='BookTable']/tbody/tr
    Log To Console  ${rowscount}  
      ${columncount}=  Get Element Count  xpath://table[@name='BookTable']/tbody/tr[1]/th
    Log To Console  ${columncount}

    ${fifthdata}=  Get Text  xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    log to Console  ${fifthdata}
#validation table name xpath and 2 column should contain contain
   Table Column Should Contain  name:BookTable  2  Author
    Table Row Should Contain  name:BookTable  4  Learn JS




