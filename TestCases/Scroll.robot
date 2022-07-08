*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://github.com/
${browser}  chrome



*** Test Cases ***
ScrollTest

        Open Browser  ${url}  ${browser}
        Maximize Browser Window 
       # Execute Javascript  window.scrollTo(0,1500)
      # Scroll Element Into View  xpath://*[@class='f5 mt-md-3 mt-0']
      #scroll till bottom
     Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
     Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)