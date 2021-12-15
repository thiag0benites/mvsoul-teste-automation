##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/5-FATURAMENTO/M_LAUDO_AIH_PAGE.robot


*** Keywords ***
Preencher parametros para laudo aih
    #Preencher campo atendimento: 1000001983
    Clicar no Campo e Preencher Informacao    ${campoCodAtend}            ${campoCodAtend}            478607
    Send Keys    enter
    Clicar no Campo e Preencher Informacao    ${campoEstabSolocitante}    ${campoEstabSolocitante}    2
    #Preencher campo C.A: 2
    Clicar no Campo e Preencher Informacao    ${campoC.A}                 ${campoC.A}                 2
    #Preencher Campo Especialidade: 03
    Clicar no Campo e Preencher Informacao    ${campoEspecialidade}       ${campoEspecialidade}       03
    #Preencher campo medico responsavel: 750
    Clicar no Campo e Preencher Informacao    ${campoMedResp}             ${campoMedResp}             750
    #PReencher campo CID PRINCIPAL B465
    Clicar no Campo e Preencher Informacao    ${campoCidPrincipal}        ${campoCidPrincipal}        O301
    #PReencher campo CID SECUNDARIO B465
    Clicar no Campo e Preencher Informacao    ${campoCIDSecundario}       ${campoCIDSecundario}       A038    
    #PReencher campo CID Assoc: A010
    Clicar no Campo e Preencher Informacao    ${campoCIDAssoc}            ${campoCIDAssoc}            A044
    #preencher Principais Sinais e Sintomas
    Clicar no Campo e Preencher Informacao    ${campoSintomas}            ${campoSintomas}            BLABLABLA
    #PReencher campo Condções que justificam internacao: qualquer coisa
    Clicar no Campo e Preencher Informacao    ${campoJustfIntern}         ${campoJustfIntern}         BLABLABLA 2
    #PReencher campo principais resultados de provas diagnosticas
    Clicar no Campo e Preencher Informacao    ${campoProvasDiag}          ${campoProvasDiag}          BLABLABLA 3
    #Cllicar no botao salvar 
    Click no Item                             ${BtnSalvar} 
    #valida mensagem de sucesso
    #Valida Mensagem                          ${Alerta}                                               Registros gravados com sucesso (1 registros gravados).
    #Clicar no botao imprimir laudo
    Click no Item                             ${BtnImprimeLaudo}
    #Clicar no botão imprimir
    Click no Item                             ${BtnImprimir}

    Sleep    6
    #Abrira nova aba, fecha-la
    ${AbasChrome}=    Get Window Handles
    Switch Window    ${AbasChrome}[1]
    Close Window
    Switch Window    ${AbasChrome}[0]
    
    Click no Item    ${BtnSair}
    Sleep    5

    Should Not Be Empty    ${campoNomePaciente}
    #Fim

    
    