##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Elementos e metodos da página de Cadastro de Centro de Custo
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
${CampoEditavel}                        xpath=//input[@class="editor-text mode-edit"]
${CampoModoPesquisa}                    xpath=//input[@class="editor-text mode-search"]
${CampoGrupoSetor}                      xpath=//div[@class="ui-buttoninput ui-widget ui-lovinput mode-edit"]/input
