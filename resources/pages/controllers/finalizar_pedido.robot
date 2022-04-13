*** Settings ***
Documentation  Este é um documento modelo para uma controller organizada.
Resource  ${EXECDIR}/resources/main.robot
Library    AppiumLibrary

*** Variables ***
&{finaliza_pedido}
...  btn_concluir_pedido_final=//android.widget.TextView[@text="CONCLUIR"]
...  btn_sim=//android.widget.Button[@text="Sim"]
...  btn_ok=//android.widget.Button[@text="OK"]
...  btn_finalizar_pedido=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView
...  btn_aviso_finalizar=//android.widget.Button[@text="OK"]


*** Keywords ***


clico no botao finalizar pedido
    Wait Until Element Is Visible    ${finaliza_pedido.btn_finalizar_pedido}
    Click Element                    ${finaliza_pedido.btn_finalizar_pedido}

clico no botao sim para finalizar pedido
    Wait Until Element Is Visible    ${finaliza_pedido.btn_sim}
    Click Element                    ${finaliza_pedido.btn_sim}

clico no botao concluir pedido final
    Wait Until Element Is Visible    ${finaliza_pedido.btn_concluir_pedido_final}
    Click Element                    ${finaliza_pedido.btn_concluir_pedido_final}


vejo mensagem pedido criado
    Wait Until Page Contains    Pedido criado!

vejo a tela finalizar pedido
    Wait Until Page Contains    FINALIZAR PEDIDO  

vejo a mensagem inventario criado
    Wait Until Page Contains  Inventário do cliente realizado!   

clico no botao aviso finalizar inventario
     Wait Until Element Is Visible    ${finaliza_pedido.btn_aviso_finalizar}
    Click Element                     ${finaliza_pedido.btn_aviso_finalizar}
        

clico no botao ok  
    Wait Until Element Is Visible    ${finaliza_pedido.btn_ok}
    Click Element                    ${finaliza_pedido.btn_ok}
       
        