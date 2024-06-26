##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                            ../../2-pages/6-CONTROLADORIA/O_REABRE_LOTE_PAGE.robot

*** Keywords ***
Acessa e Preenche Campo Codigo |${Item}|
    Click no Item                             ${CampoCodigo}
    Click no Item                             ${BtnListaCampoCodigo}
    Sleep    5
    Click no Item                             ${CampoPesquisa}
    SeleniumLibrary.Input Text                ${CampoPesquisa}                %${Item}  
    # Validar Informacao Item                   ${CampoDescricao}               ${Item}
    Click no Item                             ${BtnFiltrar}
    Click no Item                             ${BtnOk}  
    Click no Item                             ${BtnExecutarConsulta}

Seleciona Lote para Reabrir E Preenche Justificativa |${Justificativa}|
    Click no Item                              ${SelecionaLote}
    Wait Until Element Is Visible              ${CampoTextoJustif}            30
    SeleniumLibrary.Input Text                 ${CampoTextoJustif}            ${Justificativa}
    Click no Item                              ${BtnOkRegRelatorio}
    Click no Item                              ${BtnReabrirLote}
    Validar Pop-Pup de Alerta e Clicar         ${ValidMsg}                    ${BtnOkMensagem}
