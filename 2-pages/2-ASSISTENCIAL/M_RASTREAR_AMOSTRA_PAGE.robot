##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variables ***
### Campos ###
${CampoBancada}                   xpath=//input[@id="inp:cdBancada"]
${CampoDataInicial}               xpath=//input[@id="inp:dtInicial"]



### Botoes ###
${AbaEstatisticas}                xpath=//a[@id="CNV_PESQUISA_CNV_PESQUISA_tab1"]
${BotaoPesquisa}                  xpath=//button[@id="btPesquisar"]


### Diversos ###

${CampoAValidar}                  xpath=//input[@value="09/12/2021 Quinta-feira"]