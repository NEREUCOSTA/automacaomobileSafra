*** Settings ***
Documentation  Este é um documento modelo para uma controller organizada.
Resource  ${EXECDIR}/resources/main.robot
Resource    home.robot


*** Variables ***
&{login}
...  field_matricula=//android.widget.EditText[@text="DIGITE SUA MATRÍCULA"]
...  field_password=//android.widget.EditText[@text="DIGITE A SUA SENHA"]
...  field_btn=//android.widget.Button[@text="ENTRAR"]



*** Keywords ***
vejo a tela de login
    Wait Until Element is Visible  ${login.field_matricula}

estou na tela login
    estou em home
    clico no botao login 
    vejo a tela de login   

digito a matricula
    Wait Until Element is Visible  ${login.field_matricula}  10s
    input text                     ${login.field_matricula}  ${credentials.user_01}  

digito o password
    Wait Until Element is Visible  ${login.field_password}
    input text                     ${login.field_password}  ${credentials.password_01}

clico no botão entrar
    Wait Until Element is Visible  ${login.field_btn}
    Click Element                  ${login.field_btn}
 


