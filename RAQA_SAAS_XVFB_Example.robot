*** Settings ***
Documentation    Sample test to headlessly run automation
Library  Selenium2Library
Library  XvfbRobot
Suite Teardown  Close all browsers

#Test suite is dependent upon having Robot Framework XVFB Library installed:
    #https://github.com/drobota/robotframework-xvfb

*** Test Cases ***
Start Virtual Display and enter the URL
    [Documentation]  Test creates virtual display using XVFB
    #Start virtual Display and set display set window size
    start virtual display  1440  900
    #Open headless browser to desired URL
    Open Browser  http://www.google.com
    #Setting declared window size
    set window size  1440  900
    capture page screenshot
    go to  http://www.robotframework.org
    capture page screenshot
    go to  http://github.com
    capture page screenshot