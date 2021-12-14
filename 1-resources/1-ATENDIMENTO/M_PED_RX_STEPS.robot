##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Passos da tela Pedidos de exames
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/1-ATENDIMENTO/M_PED_RX_PAGE.robot

*** Variable ***

*** Keywords ***
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
