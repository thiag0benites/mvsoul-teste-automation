##################################################################################################################################
# Autor: Marcos Costa
# Descrição: O Caso de Teste tem como Objetivo Configurar Lista de Paciente do Tipo Internação.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variables ***
# Pesquisar
${BtPesq}         xpath=//*[@id="tb-search"]/a/i
# Empresa
${CpEmpA}         xpath=//div[@class='slick-cell b1 f1 selected']
${CpEmpB}         xpath=//span[@class='ui-button-icon ui-icon mv-basico-reticencias']
${CpEmpC}         xpath=//*[@id="#filterLov"]
${CpEmpD}         xpath=//*[@id="btfilter"]
${CpEmpE}         xpath=//*[@id="btok"]
# Tipo de Atendimento
${CpTpAtenA}      xpath=//div[@class='slick-cell b3 f3 selected']
${CpTpAtenB}      xpath=//*[@id="undefined_ac"]
# Tipo de Prestador
${CpTpPresA}      xpath=//div[@class='slick-cell b4 f4 selected']
${CpTpPresB}      xpath=//*[@id="undefined_ac"]
# Executa Pesquisa
${BtExec}         xpath=//*[@id="tb-execute"]/a/i
# Exibir
${ChExib}         xpath=//*[@id="grdListaCenario"]/div[4]/div[3]/div/div[2]/div[1]/div/button/span[1]
# Personalisada
${CpPersA}        xpath=//*[@id="grdListaCenario"]/div[4]/div[3]/div/div[2]/div[3]
${CpPersB}        xpath=//input[@class='editor-text mode-edit']
# Ordem
${CpOrdA}         xpath=//*[@id="grdListaCenario"]/div[4]/div[3]/div/div[2]/div[4]
${CpOrdB}         xpath=//input[@class='editor-text mode-edit']
# Filtro Padrão
${ChMPac}        xpath=//*[@id="inp:snMeusPacientes_btn"]
${ChMSet}        xpath=//*[@id="inp:snSetor_btn"]
${CpSegI}        xpath=//*[@id="inp:nrSegundosIntervaloInt"]
# Salvar e Valida Msg de Registro Salvo
${BtSalvar}    xpath=//*[@id="tb-record-save"]/a/i
${MgsVerif}    xpath=//p[@class='notifications-item-text']