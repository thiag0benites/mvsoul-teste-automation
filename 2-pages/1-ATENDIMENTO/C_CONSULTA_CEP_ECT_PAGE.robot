##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Tela de consulta de CEPs e Endereços
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${BotaoCEP}       xpath=//button[@id="PG_DADOS_PESSOAIS_btnCorreio"]
${CampoLogradouro}    xpath=//input[@id="inp:dsLogradouro"]
${CampoCidade}    xpath=//input[@id="inp:dsCidade"]
${CampoCEP}       xpath=//input[@id="inp:dsCep"]
${BotaoPesquisar}    xpath=//button[@id="btnExecutar"]
