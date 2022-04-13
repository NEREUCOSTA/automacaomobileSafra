*** Settings ***
Documentation  Este é um documento modelo para uma controller organizada.
Resource  ${EXECDIR}/resources/main.robot
Library    AppiumLibrary

*** Variables ***
&{lista_produtos}
...  btn_adicionar=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.TextView
...  btn_carrinho=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.ImageView
#...  btn_avancar=//android.widget.TextView[@text="AVANÇAR"]
...  btn_avancar=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.TextView
...  btn_sim_inventario=//android.widget.Button[@text="Sim"]
...  btn_ok=//android.widget.Button[@text="Ok"]
...  btn_agua=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageView
...  btn_aperitivo=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageView

*** Keywords ***
clico no botao avancar pedido
    Wait Until Element Is Visible  ${lista_produtos.btn_avancar} 
    Click Element                  ${lista_produtos.btn_avancar}

clico no botao sim inventario
    ${status}  Run Keyword And Return Status  Wait Until Element Is Visible  ${lista_produtos.btn_sim_inventario}
    IF  ${status}
        Click Element                  ${lista_produtos.btn_sim_inventario}
    ELSE
        Log    Cliente sem inventário
    END

vejo a lista de produtos
    Wait Until Element Is Visible  ${lista_produtos.btn_carrinho}

clico no botao ok1
    Wait Until Element Is Visible  ${lista_produtos.btn_ok}  10s
    Click Element                  ${lista_produtos.btn_ok}  

clico no botao adicionar ${quantidadeAdicionar}
    
    FOR  ${i}  IN RANGE  ${quantidadeAdicionar}
       Wait Until Element Is Visible  ${lista_produtos.btn_adicionar}
       Click Element                  ${lista_produtos.btn_adicionar}
    END
clico no botao carrinho
    Wait Until Element Is Visible  ${lista_produtos.btn_carrinho}
    Click Element                  ${lista_produtos.btn_carrinho}  
   
clico no botao agua do menu superior
    Wait Until Element Is Visible  ${lista_produtos.btn_agua}
    Click Element                  ${lista_produtos.btn_agua}

clico no botao aperitivo do menu superior
    Wait Until Element Is Visible  ${lista_produtos.btn_aperitivo}
    Click Element                  ${lista_produtos.btn_aperitivo}    