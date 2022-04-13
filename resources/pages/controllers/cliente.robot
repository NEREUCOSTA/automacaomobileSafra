*** Settings ***
Documentation  Este é um documento modelo para uma controller organizada.
Resource  ${EXECDIR}/resources/main.robot
Library    AppiumLibrary

*** Variables ***
&{cliente}
...  btn_chekin=//android.widget.TextView[@text="FAZER CHECKIN"]
...  btn_criar_pedido=//android.widget.TextView[@text="CRIAR PEDIDO"]

*** Keywords ***
vejo a tela do cliente ${nome_cliente}
    Wait Until Page Contains  ${nome_cliente}  

estou na tela do cliente ${nome_cliente}
    estou na tela principal do vendedor
    clico no botao iniciar rotina
    clico no combo dia da semana
    clico na lista de dia da semana
    clico no cliente ${nome_cliente}
    vejo a tela do cliente ${nome_cliente}

clico no botao checkin
    Wait Until Element Is Visible  ${cliente.btn_chekin}
    Click Element                  ${cliente.btn_chekin}

clico no botao criar pedido
    Wait Until Element Is Visible  ${cliente.btn_criar_pedido}
    Click Element                  ${cliente.btn_criar_pedido}  

          