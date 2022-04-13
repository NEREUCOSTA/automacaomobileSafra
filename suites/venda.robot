*** Settings ***
Documentation  Em suites é onde ficam os cenários de teste.
Resource  ${EXECDIR}/resources/main.robot
Test Setup     Start the session
Test Teardown  Close the Session


*** Test Case ***
cenario 1: acessar o cliente
    Dado que estou na tela principal do vendedor
    E clico no botao iniciar rotina
    Quando clico no cliente ${costumer.name_client}
    Então vejo a tela do cliente ${costumer.name_client}
cenario 2: acessar criacao de pedidos
    [Documentation]  acesso a tela principal
    [tags]  2  smoke
    Dado que estou na tela do cliente ${costumer.name_client}
    Quando clico no botao checkin
    E clico no botao criar pedido
    Então vejo a tela de pedidos

cenario 3 : efetuar pedido
    [Documentation]  acesso a tela principal
    [tags]  3  smoke
    Dado que estou na tela de pedidos
    Quando clico no botao avancar
    E clico no botao continuar
    E clico no botao avancar pedido 
    E clico no botao sim inventario
    E clico no botao adicionar 1
    E clico no botao carrinho
    E clico no botao concluir pedido
    E vejo a tela finalizar pedido
    E clico no botao sim para finalizar pedido
    E clico no botao concluir pedido final
    Entao vejo mensagem pedido criado
    E clico no botao ok


cenario 4 : efetuar outros pedidos
    [Documentation]  acesso a tela principal
    [tags]  4  smoke
    Dado que estou na tela de pedidos
    E clico no botao avancar
    clico no botao ok1
    E clico no botao continuar
    E clico no botao avancar pedido
    #E clico no botao sim inventario
    Quando clico no botao agua do menu superior
    E clico no botao adicionar 2
    E clico no botao aperitivo do menu superior
    E clico no botao adicionar 3
    E clico no botao carrinho
    E clico no botao remover item
    E clico no botao concluir pedido
    E vejo a tela finalizar pedido
    E clico no botao finalizar pedido
    E clico no botao sim para finalizar pedido
    #E clico no botao concluir pedido final
    Então vejo mensagem pedido criado
    E clico no botao ok
    

    

