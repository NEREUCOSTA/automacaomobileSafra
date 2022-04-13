*** Settings ***
Documentation  Este é um documento modelo para uma controller organizada.
Resource  ${EXECDIR}/resources/main.robot


*** Variables ***
&{home_permissions}
...  btn_permissionsok=//android.widget.Button[@resource-id="android:id/button2"][@text="OK"]
...  btn_allpermissions=//android.widget.Button[@resource-id="com.android.permissioncontroller:id/permission_allow_foreground_only_button"]
...  btn_allow=//android.widget.Button[@text="ALLOW"]

*** Keywords ***

concede permissão
  clico no botão "OK" na mensagem de permissão
  # clico em "While using the app"
  # Sleep    2
  # clico em "While using the app"
  clico em "Allow"
  clico em "Allow"
  clico em "Allow"

clico no botão "OK" na mensagem de permissão
  Wait Until Element is Visible   ${home_permissions.btn_permissionsok}
  Click Element                   ${home_permissions.btn_permissionsok}

clico em "While using the app"
  Wait Until Element is Visible   ${home_permissions.btn_allpermissions}
  Click Element                   ${home_permissions.btn_allpermissions}

clico em "Allow"
  Wait Until Element is Visible   ${home_permissions.btn_allow}
  Click Element                   ${home_permissions.btn_allow}
