*** Settings ***
Documentation  Este é um documento modelo para uma controller organizada.
Resource  ${EXECDIR}/resources/main.robot
Library    AppiumLibrary

*** Variables ***
&{resumo_pedido}
...  btn_concluir_pedido=//android.widget.TextView[@text="CONCLUIR PEDIDO"]


*** Keywords ***

clico no botao concluir pedido
    Wait Until Element Is Visible    ${resumo_pedido.btn_concluir_pedido}
    Click Element                    ${resumo_pedido.btn_concluir_pedido}