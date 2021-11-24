##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da tela de Gerar nota fiscal de convenio
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***

### Campos ###
${DescricaoEspecies}                      xpath=//div[@data-member="DS_ESPECIE"]/..
${DescricaoClasse}                        xpath=//div[@data-member="DS_CLASSE"]/..
${DescricaoSubclasse}                     xpath=//div[@data-member="CD_SUB_CLA"]/..
${CodigoClasse}                           xpath=//div[@data-member="CD_CLASSE"]/..
${CodigoSubclasse}                        xpath=//div[@data-member="CD_SUB_CLA"]/..
${CampoEditavel}                          xpath=//input[@class='editor-text mode-edit']

### Botoes ###


${BtnPrescricao}                          xpath=//li[@aria-controls="TAB_CONFIGURACOES-PRESCRICAO"]
${BtnFaturamento}                         xpath=//li[@aria-controls="TAB_CONFIGURACOES-FATURAMENTO"]
${BtnTipoDeEsquema}                       xpath=//div[@id="PRESCRICAO_cdTipEsq"]//button
${BtnGrupoDeProcedimentos}                xpath=//div[@id="FATURAMENTO_cdGruPro"]//button
${BtnTabelaFaturamento}                   xpath=//div[@id="FATURAMENTO_cdTabFat"]//button


### Diversos ###
${Alerta}                                 xpath=//p[@class='notifications-item-text']
   






