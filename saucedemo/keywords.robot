*** Settings ***
Library    SeleniumLibrary
Resource    variables.robot

*** Keywords ***
Abrir navegador
    Open Browser    ${URL}    ${NAVEGADOR}
    Maximize Browser Window

Fechar Navegador
    Close Browser

Realizar Login Válido
    Input Text    id:user-name    ${USUARIO_VALIDO}
    Input Text    id:password    ${SENHA_VALIDA}
    Click Button    id:login-button

Realizar Login Inválido
    Input Text    id:user-name    ${USUARIO_INVALIDO}
    Input Text    id:password    ${SENHA_INVALIDA}
    Click Button    id:login-button

Validar Login Com Sucesso
    Wait Until Element Is Visible    class:title
    Element Text Should Be    class:title    Products

Validar Mensagem De Erro
    Element Should Contain    
    ...    xpath://h3[@data-test='error']    
    ...    Username and password do not match

Adicionar Produto Ao Carrinho
    Click Button    id:add-to-cart-sauce-labs-backpack

Abrir Carrinho
    Click Element    class:shopping_cart_link

Validar Produto No Carrinho
    Element Should Contain    
    ...    class:inventory_item_name    
    ...    Sauce Labs Backpack