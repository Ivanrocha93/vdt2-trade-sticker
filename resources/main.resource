*** Settings ***
Documentation       Arquivo principal do projeto

Library             Browser

Resource            pages/login.resource
Resource            pages/dash.resource

*** Keywords ***
do login
    go to login page
    submit credencials     papito@gmail.com                   vaibrasil    
    user logged in

Start test
    [Arguments]            ${navegador}
    New Browser            headless=false    browser=${navegador}

finish test
    #Thinking time
    Sleep                          1
    Take Screenshot
    