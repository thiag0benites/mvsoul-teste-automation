##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoSetor}            xpath=//input[@id="cdSetor_ac"]
${CampoProcesso}         xpath=//input[@id="tipoPac_ac"]
${CampoAtendimento}      xpath=//input[@id="inp:cdAtendimento"]
${BotaoPesquisar}        xpath=//button[@id="btnPesquisa"]
${BotaoLimpar}           xpath=//a[@title="Limpar"]     