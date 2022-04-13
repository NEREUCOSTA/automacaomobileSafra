*** Settings ***
Documentation  Este é um documento modelo para uma controller organizada.
Resource  ${EXECDIR}/resources/main.robot
Library    AppiumLibrary

*** Variables ***
&{vendedor}
...  field_matricula=//android.widget.EditText[@text="DIGITE SUA MATRÍCULA"]
...  field_convidado=xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.TextView[2]
...  field_carga_completa=xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup
...  btn_sim=//android.widget.Button[@text="SIM"]
...  msg_carga_sucesso=//android.widget.TextView[@text="CARGA REALIZADA COM SUCESSO"]
...  btn_confirmacao=//hierarchy/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[4]/android.widget.FrameLayout




*** Keywords ***
vejo a tela CONVIDADO
  Wait Until Element is Visible  ${vendedor.field_convidado}  30s

estou na tela CONVIDADO
  estou na tela login
  digito a matricula
  digito o password
  clico no botão entrar
  Sleep  7
  vejo a tela CONVIDADO
  
clico no botao carga completa
  Wait Until Element is Visible  ${vendedor.field_carga_completa}  
  Click Element                  ${vendedor.field_carga_completa}

clico no botao sim para iniciar carga
  Wait Until Element is Visible  ${vendedor.btn_sim} 
  Click Element                  ${vendedor.btn_sim}

vejo a mensagem carga realizado com sucesso
  Wait Until Element is Visible  ${vendedor.msg_carga_sucesso}  120s
  
clico no botao de confirmação
  Wait Until Element is Visible  ${vendedor.btn_confirmacao}
  Click Element                  ${vendedor.btn_confirmacao}
      


