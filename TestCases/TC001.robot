*** Settings ***
Library  SeleniumLibrary
Library    SeleniumLibrary
Resource    ../Resources/resources1.robot

*** Variables ***



*** Test Cases ***
TC_001 Browser Start Close
    [setup]    Start Browser and Maximize
    [teardown]    close browser window

    Enter username email password    sourav    sourabhsat89@gmail.com    sourav
    select radio button    add_type    office
    select checkbox    name:terms
    select from list by value    name:sex    1
    click link    xpath://a[text()='Read Detail']

TC_002 Browser Start Close
    [tags]    smoke
    [setup]    Start Browser and Maximize
    [teardown]    close browser window

    Enter username email password    sourav    sourabhsat89@gmail.com    sourav
    select radio button    add_type    office
    select checkbox    name:terms
    select from list by value    name:sex    1
    click link    xpath://a[text()='Read Detail']

*** Keywords ***





