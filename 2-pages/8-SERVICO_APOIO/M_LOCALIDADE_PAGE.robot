##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina M_LOCALIDADE
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina M_LOCALIDADE
${HomeXpathBtnPesquisaInput}             id=menu-filter-1
${HomeXpathBtnPesquisa}                  xpath=//li[@class="menu-search"]
${ScreenLocalidades}                 xpath=//section[@id='workspace-menubar']//a[@title='Localidades']//span
${cpSala}           xpath=//div[@title="SALA"]
${btnAdicionar}         xpath=//a[@title="Adicionar"]
${cpdescricao}      xpath=//*[@id="#frames11"]    
${cpResponsavel}        xpath=//*[@id="#frames12"]
${btnSalvar}            xpath=//i[@class="mv-basico-salvar"]
${msgRecebida}          xpath=//*[@id="notifications"]/ul/li/div
