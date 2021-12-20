##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos da tela de M_ENTREGA_RECURSO.
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot


*** Variables ***


${campoFatura}    xpath=//input[@id="inp:cdFatSia"]

${campoRemessa}         xpath=//div[@class="slick-cell b1 f1 selected"]
${campoPaciente}        xpath=//div[@class="slick-cell b3 f3 selected"]
${campoData}            xpath=//div[@class="slick-cell b4 f4 selected"]
${campoProcedimento}    xpath=//div[@class="slick-cell b6 f6 selected"]
${campoSetor}           xpath=//div[@class="slick-cell b8 f8 selected"]
${campoSetorProd}       xpath=//div[@class="slick-cell b9 f9 selected"]
${campoPrestador}       xpath=//div[@class="slick-cell b10 f10 selected"]
${campoQtdDe}           xpath=//div[@class="slick-cell b12 f12 slick-last-cell selected"]

${campoRemessaInput}         xpath=//div[@class="slick-cell b1 f1 selected active editable"]//input
${campoPacienteInput}        xpath=/html/body/div[2]/div/div[2]/div/div/form/div[2]/div/div[1]/div/fieldset/div/div/div[4]/div[3]/div/div/div[4]/div/input
${campoDataInput}            xpath=//div[@class="slick-cell b4 f4 selected active editable"]//input[@row="0"] 
${campoProcedimentoInput}    xpath=//div[@class="slick-cell b6 f6 selected active editable"]//input[@row="0"]
${campoSetorInput}           xpath=//div[@class="slick-cell b8 f8 selected active editable"]//input[@row="0"]
${campoSetorProdInput}       xpath=//div[@class="slick-cell b9 f9 selected active editable"]//input[@row="0"]
${campoPrestadorInput}       xpath=//div[@class="slick-cell b10 f10 selected active editable"]//input[@row="0"]
${campoQtdDeInput}           xpath=//div[@class="slick-cell b12 f12 slick-last-cell selected active editable"]//input[@row="0"]



${campoServico}           xpath=//input[@id="inp:eveSiasus_cdServico"]
${campoUps}               xpath=//input[@id="inp:eveSiasus_cdUps"]
${mensagemApresentada}    xpath=//p[@class="notifications-item-text"]
${btnOk}                  xpath=//button[contains(text(),'OK')]




