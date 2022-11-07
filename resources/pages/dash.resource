*** Settings ***
Documentation        Arquivo principal da página do Dashboard

Library              Browser

*** Keywords ***
user logged in
    
    ${header_title}        Set Variable                        Aquela figurinha incrível a um clique de distância.
    Get Text               css=.header-content strong         equal    ${header_title}

Search user
    [Arguments]            ${target}
    Fill Text              css=input[id="keyword"]            ${target}
    Click                  css=button >> text=Buscar

Select Sticker
    [Arguments]            ${name}
    Click                  xpath=//img[@alt="${name}"]/..

Get in touch
    Click                  css=button >> text=Entrar em contato

Whatsapp Sticker Message
    [Arguments]            ${sticker_name}
    ${expected_message}    Set Variable        Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${sticker_name}, bora negociar?
    Switch Page            NEW
    Wait For Elements State                    css=p >> text=${expected_message}    visible    5000

Validade search error page
    Get Text    xpath=//strong[@class="error"]      equal    Essa busca não retornou dados!
    Click       css=button >> text=VOLTAR
    Get Text    xpath=//div[@class="header-content"]//..//strong    equal    Aquela figurinha incrível a um clique de distância.