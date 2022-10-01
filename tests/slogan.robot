*** Settings ***
Documentation               Teste de validação da home page

Resource                    ../resources/main.resource    

Test Setup                  Start test    chromium

Test Teardown               finish test
  
*** Test Cases ***
Deve validar o slogan da home page
    go to login page
    Get Text               .logo-container h2    contains    ${slogan}
    