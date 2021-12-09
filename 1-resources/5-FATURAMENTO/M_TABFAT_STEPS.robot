##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Tabela de Faturamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_TABFAT_PAGE.robot


*** Variable ***

*** Keywords ***

Preencher Descricao e Tipo |${TabelaDesc}| |${TabelaTip}|
    Preencher Campo                             ${CampoDescricao}           ${TabelaDesc}
    Send Keys   TAB
    Preencher Campo                             ${CampoTip}                 ${TabelaTip}

Salvar Registros |${MsgSucesso}|
    Click Elemento por titulo                    Salvar
    Valida Mensagem                              ${MensagemToast}             ${MsgSucesso}
