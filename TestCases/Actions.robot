*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://swisnl.github.io/jQuery-contextMenu/demo.html
${browser}  chrome



*** Test Cases ***
MouseTest

        Open Browser  ${url}  ${browser}
        Maximize Browser Window 
        #to do right click on element use context menu/ryt click
        Open Context Menu   xpath://*[@class='context-menu-one btn btn-neutral']  
        sleep  3
        #double click use double click element

        go to  https://testautomationpractice.blogspot.com/
        Double Click Element  xpath://*[contains(text(),'Copy Text')]

        #drag and drop source and target locator
        Go To  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
        Maximize Browser Window  
        Drag And Drop  id:box5  id:box106