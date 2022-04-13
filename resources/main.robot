# AQUI É ONDE DECLARAMOS TODAS AS NOSSAS CONTROLLERS, CONFIGS E TUDO QUE O PROJETO VAI UTILIZAR #
*** Settings ***
# BIBLIOTECAS
Library  AppiumLibrary

# resources/utils
Variables  ${EXECDIR}/resources/utils/config_helper.py

# resources/pages/shared
Resource  ${EXECDIR}/resources/shared/hook.robot
Resource  ${EXECDIR}/resources/shared/setups_teardowns.robot
Resource  ${EXECDIR}/resources/shared/gherkin.robot

# resources
Resource  ${EXECDIR}/resources/data/credentials.robot
Resource  ${EXECDIR}/resources/pages/controllers/login.robot
Resource  ${EXECDIR}/resources/pages/controllers/home.robot
Resource  ${EXECDIR}/resources/pages/controllers/home-permissions.robot
Resource  ${EXECDIR}/resources/pages/controllers/vendedor.robot
Resource  ${EXECDIR}/resources/pages/controllers/tela-principal.robot
Resource  ${EXECDIR}/resources/pages/controllers/busca_cliente.robot
Resource  ${EXECDIR}/resources/pages/controllers/cliente.robot
Resource  ${EXECDIR}/resources/pages/controllers/pedido.robot
Resource  ${EXECDIR}/resources/pages/controllers/lista_produtos.robot
Resource  ${EXECDIR}/resources/pages/controllers/relatorio_personalizado.robot
Resource  ${EXECDIR}/resources/pages/controllers/finalizar_pedido.robot
Resource  ${EXECDIR}/resources/pages/controllers/resumo_pedido.robot
Resource  ${EXECDIR}/resources/pages/controllers/carrinho.robot

# resources/data
Resource  ${EXECDIR}/resources/data/costumer.robot
