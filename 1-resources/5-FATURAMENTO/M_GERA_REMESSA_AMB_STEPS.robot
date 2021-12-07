##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/5-FATURAMENTO/M_GERA_REMESSA_AMB_PAGE.robot

*** Keywords ***
Preencher os campos <Convenio> |${FiltroConvenio}|, <Plano> <origem> |${FiltroOrigem}|, <periodos> |${DataInicio}| |${DataFinal2}| |${Atendimento}|
    Click no Item                    ${BtnConvenio} 
    Preencher campo                  ${FiltroCo}                     ${FiltroConvenio}
    Click no Item                    ${BtnFiltro} 
    Click no Item                    ${BtnOk}  

    Click no Item                    ${BtnPlano} 
    Click no Item                    ${LinhaPlano}
    Click no Item                    ${BtnOk} 

    Click no Item                    ${BtnOrigem} 
    Preencher campo                  ${FiltroCo}                     ${FiltroOrigem}
    Click no Item                    ${BtnFiltro} 
    Click no Item                    ${BtnOk} 

    Preencher campo                  ${DataInicial}                  ${DataInicio}
    Preencher campo                  ${DataFinal}                    ${DataFinal2}
    Seleciona Item Combobox          ${Combobox}                     ${Atendimento}

Clicar no botao Pesquisar |${MsgVerificada}|
    Click no Item                    ${BtnPesquisar}  
    Valida Mensagem                  ${MsgLida}                      ${MsgVerificada}
    Click no Item                    ${Notificacao} 

Clicar no botao Cria Remessa
    Click no Item                    ${BtnCriaRemessa} 

Preencher os campos <Competencia da Fatura> |${DataComp}|, <Data de Inicio da Remessa> |${DataRemessa2}|, <Data de Termino da Remessa> |${DataTerminio}|
     Preencher campo                 ${CampoCompetencia}               ${DataComp}
     Preencher campo                 ${DataRemessa}                    ${DataRemessa2}
     Preencher campo                 ${DataTermino}                    ${DataTerminio}
     Click no Item                   ${BtnRetorna} 