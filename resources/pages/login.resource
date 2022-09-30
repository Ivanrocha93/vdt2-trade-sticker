*** Settings ***
Documentation        Login page

Library              Browser

*** Keywords ***
go to login page
        New Page               https://trade-sticker-dev.vercel.app/

submit credencials
    [Arguments]        ${email}        ${password}

    Fill Text              css=input[name="email"]            ${email}
    Fill Text              css=input[name="password"]         ${password}
    Click                  css=button >> text=Entrar

toast messsage should be
    [Arguments]                    ${expected_message}

    ${locator}                     Set Variable                        css=.Toastify__toast-body div >> text=${expected_message}
    Wait For Elements State        ${locator}                          visible        3