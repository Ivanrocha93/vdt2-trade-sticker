*** Settings ***
Documentation                      Testes de login

Resource                           ../resources/main.resource

Test Setup                         Start test    chromium

Test Teardown                      finish test

*** Test Cases ***
Deve logar com sucesso
    [Tags]                         sucess
    go to login page
    submit credencials             papito@gmail.com                   vaibrasil    
    user logged in   

Não deve logar com senha incorreta
    [Tags]                         inv_pass
    go to login page
    submit credencials             papito@gmail.com                   vaibrasil1
    toast messsage should be       Credenciais inválidas, tente novamente!
    

Deve exibir notificação toaster se a senha não for preenchida
    [Tags]                         without_pass
    go to login page
    submit credencials             papito@gmail.com                    ${EMPTY}     
    toast messsage should be       Por favor, informe a sua senha secreta!
    

Deve exibir notificação toaster se o email não for preenchido
    [Tags]                         without_email
    go to login page
    submit credencials             ${EMPTY}                            vaibrasil     
    toast messsage should be       Por favor, informe o seu email!
    

Deve exibir notificação toaster se o email e a senha não forem preenchidos
    [Tags]                         without_data
    go to login page
    submit credencials             ${EMPTY}                            ${EMPTY}     
    toast messsage should be       Por favor, informe suas credenciais!
                                           


    

    