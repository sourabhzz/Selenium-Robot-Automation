*** Settings ***
Library  SeleniumLibrary
Library    SeleniumLibrary
Library    ../ExternamKeywords/readData.py

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings



*** Keywords ***
Start Browser and Maximize
    open browser    ${URL}    ${BROWSER}
    maximize browser window
    ${Ttile}=    get title
    [Return]    ${Ttile}

close browser window
    close browser

Enter username email password
    [Arguments]    ${name}    ${Email}    ${Password}
    ${userName}=    readLocatordata    Registration.username_name
    input text    name:${userName}    ${name}
    input text    xpath://input[@name='fld_email']    ${Email}
    input password    name:fld_password    ${Password}

readLocatordata
    [Arguments]    ${locator}
    ${result}=    readdata1    ${locator}
    [Return]    ${result}
