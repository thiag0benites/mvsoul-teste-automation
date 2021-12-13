##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/5-FATURAMENTO/M_LAUDO_AIH_PAGE.robot
Resource    M_NOTA_FISCAL_CONV_STEPS.robot
Resource    ../6-CONTROLADORIA/O_REC_STEPS.robot

*** Keywords ***
Preencher parametros para laudo aih
    #Preencher campo atendimento: 1000001965
    Clicar no Campo e Preencher Informacao    ${campoCodAtend}   ${campoCodAtend}    1000001965
    Send Keys    enter
    Sleep    5
    #Clicar sim pop up
    #Click no Item    ${BtnSimPopUp}
    #Clicar ok pop up
    #Click no Item    ${BtnOk}
    #preencher campo data
    #Preencher campo estabelecimento solicitante: 2
    Clicar no Campo e Preencher Informacao    ${campoEstabSolocitante}    ${campoEstabSolocitante}    2
    #Preencher campo C.A: 2
    Clicar no Campo e Preencher Informacao    ${campoC.A}                 ${campoC.A}                 2
    #Preencher Campo Especialidade: 03
    Clicar no Campo e Preencher Informacao    ${campoEspecialidade}       ${campoEspecialidade}       03
    #Preencher campo medico responsavel: 750
    Clicar no Campo e Preencher Informacao    ${campoMedResp}             ${campoMedResp}             750
    #PReencher campo CID: B465
    Clicar no Campo e Preencher Informacao    ${campoCID}                 ${campoCID}                 B465    
    #PReencher campo CID Assoc: A010
    Clicar no Campo e Preencher Informacao    ${campoCIDAssoc}            ${campoCIDAssoc}            A010
    #preencher Principais Sinais e Sintomas
    Clicar no Campo e Preencher Informacao    ${campoSintomas}            ${campoSintomas}            BLABLABLA
    #PReencher campo Condções que justificam internacao: qualquer coisa
    Clicar no Campo e Preencher Informacao    ${campoJustfIntern}         ${campoJustfIntern}         BLABLABLA 2
    #PReencher campo principais resultados de provas diagnosticas
    Clicar no Campo e Preencher Informacao    ${campoProvasDiag}          ${campoProvasDiag}          BLABLABLA 3
    #Cllicar no botao salvar 
    Click no Item    ${BtnSalvar} 
    #valida mensagem de sucesso
    Valida Mensagem                           ${Alerta}                                               Registros gravados com sucesso (1 registros gravados).
    #Clicar no botao imprimir laudo
    Click no Item    ${BtnImprimeLaudo}
    #Clicar no botão imprimir
    Click no Item    ${BtnImprimir}
    #Abrira nova aba, fecha-la
    Sleep    10
    #Fim

    
    