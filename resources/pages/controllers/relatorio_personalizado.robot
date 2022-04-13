** Settings ***
Documentation  Este é um documento modelo para uma controller organizada.
Resource  ${EXECDIR}/resources/main.robot
Library    AppiumLibrary

*** Variables ***
&{relatorio_personalizado}
...  btn_continuar=//android.widget.TextView[@text="CONTINUAR"]
...  btn_registrar_nao_pesquisa=//android.widget.TextView[@text="REGISTRAR NÃO PESQUISA"]


*** Keywords ***


clico no botao continuar
    
    Wait Until Element Is Visible    ${relatorio_personalizado.btn_continuar}
    Click Element                    ${relatorio_personalizado.btn_continuar}

clico no botao registrar nao pesquisa
    
    Wait Until Element Is Visible    ${relatorio_personalizado.btn_registrar_nao_pesquisa}
    Click Element                    ${relatorio_personalizado.btn_registrar_nao_pesquisa}   