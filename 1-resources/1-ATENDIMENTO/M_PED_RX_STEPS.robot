##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Passos da tela Pedidos de exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_PED_RX_PAGE.robot
Resource            ../../1-resources/2-ASSISTENCIAL/ATEURG_STEPS.robot
Resource          ../../2-pages/1-ATENDIMENTO/ATE_COMPL_PAGE.robot
Resource          ../../1-resources/1-ATENDIMENTO/ATE_COMPL_STEPS.robot

*** Variable ***

*** Keywords ***
####   Keyword para validar pré requisito do teste   ###
Confirmacao Diagnostico1
    Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Diagnóstico do Atendimento>Confirmação"@nprint @las
    Validar Acesso a Tela |Diagnóstico do Atendimento|
    Preencher Campo Atendimento |1000002161|
    Validar Dados Apos Selecao do Atendimento |1308645| |MARIA RITA| |CLINICA MEDICA HOBRA| |GEISHA ABREU SOARES DE PINA|
    Preencher Campos Obrigatórios |R100| |Aguda| |1| |Dias| |24| |Teste Descrição|
    Confirmar Diagnostico |Processo concluído com sucesso !| |Registros gravados com sucesso|
    Click Elemento Por Titulo              Sair
###    ===========================================   ###
Preencher atendimento |${Atendimento}|
    Preencher Campo    ${CampoAtendimento}    ${Atendimento}

Escolha o medico solicitante |${Medico}|
    Click no Item    ${BtnMedico}
    Preencher Campo    ${FiltroMedico}    ${Medico}
    Click no Item    ${BtnFiltro}
    Click no Item    ${BtnOk}

Digite a data da coleta |${Data}|
    Preencher Campo    ${DataColeta}    ${Data}

Escolha <o setor executante> |${Setor}|, <o setor solicitante> |${Solicitante}|, <o tecnico> |${Tecnico}|, <o exame> |${Exame}|
#Escolha o setor executante
    Click no Item    ${BtnSetor}
    Preencher Campo    ${FiltroMedico}    ${Setor}
    Click no Item    ${BtnFiltro}
    Click no Item    ${BtnOk}
#Escolha o setor solicitante
    Click no Item    ${BtnSetorSol}
    Preencher Campo    ${FiltroMedico}    ${Solicitante}
    Click no Item    ${BtnFiltro}
    Click no Item    ${BtnOk}
#Escolha o tecnico
    Click no Item    ${BtnTecnico}
    Preencher Campo    ${FiltroMedico}    ${Tecnico}
    Click no Item    ${BtnFiltro}
    Click no Item    ${BtnOk}
#Escolha o exame
    Click no Item    ${LinhaExame}
    Click no Item    ${BtnExame}
    Preencher Campo    ${FiltroMedico}    ${Exame}
    Click no Item    ${BtnFiltro}
    Click no Item    ${LinhaDescricao}
    Click no Item    ${BtnOk}
    Click no Item    ${BtnOk2}

Clicar em Salvar
    Click Elemento por titulo    Salvar
    Sleep    2
