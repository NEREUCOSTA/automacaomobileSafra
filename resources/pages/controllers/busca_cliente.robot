*** Settings ***
Documentation  Este é um documento modelo para uma controller organizada.
Resource  ${EXECDIR}/resources/main.robot
Library    AppiumLibrary


*** Variables ***
&{buscaCliente}
...  combo_dia=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.TextView
...  dia_todos=//android.widget.TextView[@text="Todos"]

*** Keywords ***
clico no cliente ${nome_cliente}
    Wait Until Page Contains  ${nome_cliente}    
    Click Text    ${nome_cliente}

clico no combo dia da semana
    Wait Until Element Is Visible    ${buscaCliente.combo_dia}   
    Tap                              ${buscaCliente.combo_dia} 

clico na lista de dia da semana
    Wait Until Element Is Visible    ${buscaCliente.dia_todos}
    Click Element                    ${buscaCliente.dia_todos}   