##################################################################################################################################
# Autor: Fernando Carvalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/5-FATURAMENTO/M_CONTROLE_FREQUENCIA_P321_PAGE.robot

*** Keywords ***
Controle de frequencia individual |${MesAno}||${Prontuario}||${Atendimento}||${Prestador}||${DataInicial}||${DataFinal}||${CodProcedimentoPrincipal}|
    Clicar no Campo e Preencher Informacao    ${CampoMesAno}    ${CampoMesAno}    ${MesAno}
    Clicar no Campo e Preencher Informacao    ${CampoProntuario}    ${CampoProntuario}    ${Prontuario}
    Send Keys    enter
    Clicar no Campo e Preencher Informacao    ${CampoAtendimento}    ${CampoAtendimento}    ${Atendimento}
    Clicar no Campo e Preencher Informacao    ${CampoPrestador}    ${CampoPrestador}    ${Prestador}
    Send Keys    enter
    Clicar no Campo e Preencher Informacao    ${CampoDataInicial}    ${CampoDataInicial}    ${DataInicial}
    Clicar no Campo e Preencher Informacao    ${CampoDataFinal}    ${CampoDataFinal}    ${DataInicial}
    Clicar no Campo e Preencher Informacao    ${CampoCodProcedimentoPrincipal}    ${CampoCodProcedimentoPrincipal}    ${CodProcedimentoPrincipal}
    Send Keys    enter
    Click no Item    ${btnSalvar}
    Click no Item    ${BtnImprimirFichaControle}
    Click no Item    ${BtnSair}
    #Validação
    Should Not Be Empty    ${CampoNomePaciente}
