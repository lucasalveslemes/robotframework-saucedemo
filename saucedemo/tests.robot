*** Settings ***
Resource    keywords.robot

Test Setup    Abrir navegador
Test Teardown    Fechar Navegador

*** Test Cases ***
Login Com Sucesso
    Realizar Login Válido
    Validar Login Com Sucesso

Login Inválido
    Realizar Login Inválido
    Validar Mensagem De Erro

Adicionar Produto No Carrinho 
    Realizar Login Válido
    Adicionar Produto Ao Carrinho
    Abrir Carrinho
    Validar Produto No Carrinho