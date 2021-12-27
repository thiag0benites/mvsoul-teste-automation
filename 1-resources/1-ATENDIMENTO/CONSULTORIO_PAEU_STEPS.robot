##################################################################################################################################
# Autor: Rodrigo Torquato
# Decrição: Passos da tela Entrada dos Produtos
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/CONSULTORIO_PAEU_PAGE.robot

*** Variable ***

*** Keywords ***
Acesso Diagnostico
    Click no Item    ${BtnAtender}
    Validar Pop-Pup de Alerta e Clicar    ${MsgAlerta}    ${BtnOkAlerta}
    Click no Item    ${AbaDiagnostico}

Preenche Diagnostico Informacoes "HDA|${HDA}|", "Exame Fisico|${ExFisico}|", "Tratamento|${Tratamento}|", "Diagnostico|${Diag}|", "Validacao|${MsgOk}|"
    Click no Item    ${BtnNovoDiag}
    Preencher campo    ${CampoHDA}    ${HDA}
    Preencher campo    ${CampoExameFisico}    ${ExFisico}
    Preencher campo    ${CampoTratamento}    ${Tratamento}
    Preencher campo    ${CampoDiagnostico}    ${Diag}
    Click no Item    ${BtnGravar}
    Click no Item    ${BtnConfirmar}
    Validar Informacao Item    ${MsgAlerta}    ${MsgOk}
    Click no Item    ${BtnOkAlerta}
