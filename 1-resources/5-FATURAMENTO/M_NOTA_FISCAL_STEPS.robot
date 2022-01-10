##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
Resource          ../../2-pages/5-FATURAMENTO/M_NOTA_FISCAL_PAGE.robot

*** Variables ***

*** Keywords ***
Preencha o Atendimento |${Atendimento}|
    Click no Item    ${Notificacao}
    Preencher Campo    ${CampoAtendimento}    ${Atendimento}
    Click Elemento por titulo    Executar Consulta
    Click no Item    ${BtnRecebe}

Clique em imprimir
    Click no Item    ${BtnImprimir}
    Click no Item    ${BtnImprimir2}

Verificacao da Conversão de RPS em NFe
    Click no Item    ${BtnAtualizar}
    Click no Item    ${BtnSair}
    Wait Until Element Is Visible    ${BtnSim}
    Click no Item    ${BtnSim}
    Click no Item    ${BtnSair2}

Cancelar nota fiscal |${MsgLida}|
    Click no Item    ${BtnCancelar}
    Click no Item    ${BtnMotivo}
    Click no Item    ${LinhaMotivo}
    Click no Item    ${BtnOk}
    Click no Item    ${BtnOk2}
    Validar Informacao Item    ${MsgUsuario2}    ${MsgLida}
