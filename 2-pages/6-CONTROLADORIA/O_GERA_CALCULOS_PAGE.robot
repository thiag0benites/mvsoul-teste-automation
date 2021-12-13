##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###

${CampoFiltro}                     xpath=//input[@id="#filterLov"]
${DivAlocacao}                     xpath=//div[@id="alocacaoSltc"]
${DivPrimario}                     xpath=//div[@id="primarioSltc"]
${DivRateio}                       xpath=//div[@id="rateioSltc"]
${DivReceita}                      xpath=//div[@id="receitaSltc"]
${DivUnitario}                     xpath=//div[@id="unitarioSltc"]
${DivPaciente}                     xpath=//div[@id="pacienteSltc"]
${DivTratamento}                   xpath=//div[@id="tratamentoSltc"]
${DivCompetencia11/2017}           xpath=//div[@data-member="DT_FECHAMENTO"][contains(text(),"Aberto")]



### Botoes ###

${BtnFiltro}                       xpath=//button[@id="btfilter"]
${Btnok2}                           xpath=//button[@id="btok"]
${BtnCompetencia}                  xpath=//div[@id="dtCompIni"]/button
${BtnConfirmar}                    xpath=//button[@id="btnConfirmar"]
${BtnLimpar}                       xpath=//button[@id="btnLimpar"]
${BtnOK}                           xpath=//li[@class="notification-buttons"]/button




### Diversos ###
${Alerta}                          xpath=//p[@class="notifications-item-text"]

${ValidaLimparAMassa}              xpath=//div[@id="circBtnCONTROLETRATAMENTO_SLTC"]/div[2][text()="Cálculo não Selecionado"]


