##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Recebimento de Cadastro de Serviços
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/8-SERVICO_APOIO/M_SERVI_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Campos Obrigatorios |${Desc}| |${Peso}| |${ServReinf}| |${DMS}| |${CtContab}| |${CtCusto}| |${SPED}| |${HrMax}| |${MinMax}| |${HrMin}| |${MinMin}| |${Categoria}| |${Especie}| |${Classe}| |${SubClasse}| |${VlServ}| |${SIGFE}|           
    Preencher Campo                            ${CampoEditavel}            ${Desc}
    Clicar no Campo e Preencher Informacao     ${CampoPeso}                ${CampoEditavel}                ${Peso}
    Clicar Item e Selecionar da Lista          ${CampoDocServReinf}        ${BotaoLov}                     ${ServReinf}            ${ServReinf}
    Clicar no Campo e Preencher Informacao     ${CampoDMS}                 ${CampoEditavel}                ${DMS}
    Clicar Item e Selecionar da Lista          ${CampoContaContabil}       ${BotaoLov}                     ${CtContab}             ${CtContab}
    Clicar Item e Selecionar da Lista          ${CampoContaCusto}          ${BotaoLov}                     ${CtCusto}              ${CtCusto}
    Clicar Item e Selecionar da Lista          ${CampoSPEDFISCAL}          ${BotaoLov}                     ${SPED}                 ${SPED}
    Clicar no Campo e Preencher Informacao     ${CampoHrMax}               ${CampoEditavel}                ${HrMax}
    Clicar no Campo e Preencher Informacao     ${CampoMinMax}              ${CampoEditavel}                ${MinMax}
    Clicar no Campo e Preencher Informacao     ${CampoHrMin}               ${CampoEditavel}                ${HrMin}
    Clicar no Campo e Preencher Informacao     ${CampoMinMin}              ${CampoEditavel}                ${MinMin}
    Clicar no Campo e Preencher Informacao     ${CampoCatServ}             ${CampoCatServEditavel}         ${Categoria}
    Clicar Item e Selecionar da Lista          ${CampoEspecie}             ${BotaoLov}                     ${Especie}              ${Especie}   
    Clicar Item e Selecionar da Lista          ${CampoClasse}              ${BotaoLov}                     ${Classe}               ${Classe}   
    Clicar Item e Selecionar da Lista          ${CampoSubClasse}           ${BotaoLov}                     ${SubClasse}            ${SubClasse}
    Clicar no Campo e Preencher Informacao     ${CampoVlServ}              ${CampoEditavel}                ${VlServ}
    Clicar no Campo e Preencher Informacao     ${CampoContaSIGFE}          ${CampoEditavel}                ${SIGFE}

Validar Campos com Preenchimento Automatico |${CtContab}| |${CtCusto}| |${Especie}| |${Classe}| |${SubClasse}|
    Validar Elemento Pelo Titulo               ${CtContab}
    Validar Elemento Pelo Titulo               ${CtCusto}
    Validar Elemento Pelo Titulo               ${Especie}
    Validar Elemento Pelo Titulo               ${Classe}
    Validar Elemento Pelo Titulo               ${SubClasse}

### Keyword para retornar massa de dados para status inicial do teste ###
Excluir Servico Cadastrado |${Desc}| |${MensagemEsperadaExcluir}| |${MensagemEsperadaSucesso}|
    Click Elemento por titulo                  Procurar
    Clicar no Campo e Preencher Informacao     ${CampoDescricao}           ${CampoDescPesquisa}             ${Desc}
    Click Elemento por titulo                  Executar Consulta
    Click Elemento por titulo                  Apagar
    Valida Mensagem                            ${MensagemToastExcluir}     ${MensagemEsperadaExcluir}
    Click no Item                              ${BotaoSim}
    Valida Mensagem                            ${MensagemToastSucesso}     ${MensagemEsperadaSucesso}
    Click no Item                              ${BotaoOk}   
