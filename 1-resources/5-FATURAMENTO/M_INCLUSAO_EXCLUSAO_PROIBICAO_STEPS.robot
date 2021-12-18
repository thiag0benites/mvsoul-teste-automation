##################################################################################################################################
# Autor: Alan Patriota
# Decrição: Passos da tela de Inclusao e Exclusao de Proibição
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/5-FATURAMENTO/M_INCLUSAO_EXCLUSAO_PROIBICAO_PAGE.robot
Resource    ../2-ASSISTENCIAL/C_EXA_REA_STEPS.robot

*** Variable ***

*** Keywords ***
Selecionar Procedimento, Convenio, Plano e Setores
    Preencher Campo                           ${CampoProced}
    Clicar no Campo e Preencher Informacao    ${DivConvenio}    ${CampoConvenio}    $DadoInserido
    Click no Item                             ${BotaoPlanos}
    Click no Item                             ${BotaoSetores}
Preencher Vigencia

Incluir 
