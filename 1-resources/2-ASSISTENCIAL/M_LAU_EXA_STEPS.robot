##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/2-ASSISTENCIAL/M_LAU_EXA_PAGE.robot

*** Keywords ***
Laudos dos exames |${Data}||${ComboBox}||${Tecnico}||${Medico}||${Medico}||${MensagemEsperada}|
    Click no Item    ${BtnVizualizarFiltro}
    Clicar no Campo e Preencher Informacao    ${CampoData}    ${CampoData}    ${Data}
    Seleciona Item Combobox    ${ItemComboBox}    ${ComboBox}
    Click no Item    ${BtnPesquisar}
    Click no Item    ${CheckBox}
    Click no Item    ${BtnLaudar}
    Clicar no Campo e Preencher Informacao    ${CampoTecnico}    ${CampoTecnico}    ${Tecnico}
    Clicar no Campo e Preencher Informacao    ${CampoMedico}    ${CampoMedico}    ${Medico}
    Click no Item    ${BtnDigitarLaudo}
    Click no Item    ${Textos}
    Click no Item    ${DivTexto}
    Click no Item    ${BtnOkTextos}
    Click no Item    ${BtnGravar}
    Click no Item    ${Btnliberar}
    Clicar no Campo e Preencher Informacao    ${Campo1Medico}    ${Campo1Medico}    ${Medico}
    Click no Item    ${BtnConfirmar}
    #VALIDACAO
    Valida Mensagem    ${MensagemRecebida}    ${MensagemEsperada}
    Click no Item    ${BtnOk}
