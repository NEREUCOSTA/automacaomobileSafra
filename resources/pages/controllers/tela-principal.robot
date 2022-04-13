*** Settings ***
Documentation  Este é um documento modelo para uma controller organizada.
Resource  ${EXECDIR}/resources/main.robot
Resource    vendedor.robot
Library    AppiumLibrary

*** Variables ***
&{principal}
...  btn_iniciar_rotina=//android.widget.TextView[@text="INICIAR MINHA ROTINA"]
...  field_name=//android.widget.TextView[@text="RAIANNY KEROLLENY GUILHERME"]



*** Keywords ***
vejo botão iniciar rotina
    Wait Until Element is Visible  ${principal.btn_iniciar_rotina}  50s
    
clico no botao iniciar rotina
    Wait Until Element is Visible  ${principal.btn_iniciar_rotina}
    Click Element                  ${principal.btn_iniciar_rotina}
       
estou na tela principal do vendedor
   estou na tela CONVIDADO
   clico no botao carga completa
   clico no botao sim para iniciar carga
   vejo a mensagem carga realizado com sucesso
   clico no botao de confirmação
   vejo botão iniciar rotina

