*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords1.robot
#../ for current directory resources go to that folder inside that go to that file

*** Variables ***
${url}  https://demo.guru99.com/test/newtours/login.php
${browser}  chrome



*** Test Cases ***
ToursTest

    #launchBrowser
  ${pagetitle}=  launchBrowser  ${url}  ${browser}
  Log To Console  ${pagetitle}  
    loginToTour



