*** Settings ***
Documentation                    Teste de negociação de figurinhas da copa

Resource                         ../resources/main.resource    

Test Setup                       Start test    chromium

Test Teardown                    finish test


*** Test Cases ***
Deve negociar a figurinha do Neymar Legends
    do login
    Search user                  Legend
    Select Sticker               Neymar Jr
    Get in touch
    Whatsapp Sticker Message     Neymar JR

Deve exibir página de erro da funcionalidade buscar e depois voltar
    do login
    Search user                  Legends
    Validade search error page
    

    