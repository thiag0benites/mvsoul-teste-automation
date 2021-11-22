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

${BtnAlerta}                              xpath=//li[@class='notification-buttons']//button
${BtnTipoDeEsquema}                       xpath=//div[@id='PRESCRICAO_cdTipEsq']//button

### Diversos ###
${Alerta}                                 xpath=//p[@class='notifications-item-text']
   

#//a[@id='TAB_CONFIGURACOES_TAB_CONFIGURACOES_tab1']




