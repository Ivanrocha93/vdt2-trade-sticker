*** Settings ***
Documentation               Login tests

Resource                    ../resources/main.resource

Test Setup    Start test

Test Teardown    finish test



*** Test Cases ***
Deve logar com sucesso
    go to login page
    submit credencials             papito@gmail.com                   vaibrasil    
    user logged in   

Não deve logar com senha incorreta
    [Tags]                         inv_pass
    go to login page
    submit credencials             papito@gmail.com                   vaibrasil1
    toast messsage should be       Credenciais inválidas, tente novamente!
    #Thinking time
    Sleep                          1

    

    