*** Settings ***
Documentation                       Teste do checkbox lembrar meus dados

Resource                            ../resources/main.resource

Test Setup                          Start test    chromium

Test Teardown                       finish test

*** Test Cases ***
Deve manter os campos email e senha preenchidos após deslogar
        go to login page
        Check Checkbox              css=input[name="remember"]
        submit credencials          papito@gmail.com                   vaibrasil
        user logged in
        Click                       css=a[href="/"]
        validate login page
        validate remember me        papito@gmail.com                   vaibrasil