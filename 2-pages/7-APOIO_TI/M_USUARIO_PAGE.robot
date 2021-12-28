##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de M_USUARIO

${cpUsuario}        xpath=//input[@name="cdUsuario"]
${cpNome}           xpath=//input[@name="nmUsuario"]
${cpDtNasc}         xpath=//input[@name="dtNascimento"]
${cpObservacao}     xpath=//input[@name="dsObservacao"]
${cpEmail}          xpath=//input[@name="dsEmail"]
${cpDDD}            xpath=//input[@name="nrDdd"]
${cpCelular}        xpath=//input[@name="nrCelular"]
${cpProfissao}        xpath=//input[@name="cdCbo"]
${cpMatricula}      xpath=//input[@name="nrMatricula"]
${cpCracha}         xpath=//input[@name="cdCracha"]
${elemPapel}        xpath=//div[@class="slick-cell b0 f0 selected"]
${escolhaPapel}     xpath=(//span[@class="ui-button-icon ui-icon mv-basico-reticencias"])[5]
${btnOkPapel}       xpath=(//span)[91]
${elemTpPapel}      xpath=//div[@title="Auxiliar"]
${elemEscTpPapel}       xpath=(//span[@class="ui-button-icon ui-icon mv-basico-seta_baixo_simples"])[5]
${cpPrincipal}        xpath=//input[@id="undefined_ac"]
${btnReconciliar}       xpath=//*[@id="PAGE_PAPEL_btnReconciliar"]
${mensagemPop}      xpath=//*[@id="notifications"]/ul/li[1]
${btnOk}      xpath=//*[@class="btn btn-primary"]