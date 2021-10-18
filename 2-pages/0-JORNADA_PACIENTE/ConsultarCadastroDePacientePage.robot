##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da página de Consulta de Cadastro de Paciente
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot
Resource          ../../1-resources/auxiliar/Genericos.robot

*** Variable ***
### Elementos da Pagina de Consulta de Cadastro de Paciente
${btnPesquisar}                       xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${btnConfirmar}                       xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${idAbaAtendimento}                   id=TAB_CANVAS_TAB_CANVAS_tab1
${selectConsultaPaciente}             xpath=//input[@id='TB_ATENDIMENTO_snMostraConsulta_ac']
${validaPreCondicao}                  id=btnDocumento
${inputPrimeiroNome}                  id=inp:primeiroNome
${selectNomeLista}                    xpath=//div[@class='ui-widget-content slick-row even active']
