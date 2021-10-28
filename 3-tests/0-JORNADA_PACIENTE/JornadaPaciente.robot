#################################################################################################################################################################
# Autor: Letícia, Gabriel e Thiago
# Decrição: Smoke Test da Jornada do Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/0-JORNADA_PACIENTE "3-tests\0-JORNADA_PACIENTE\JornadaPaciente.robot"
# firefox: robot -v browser:firefox -d ./5-results/JORNADA_PACIENTE "3-tests\0-JORNADA_PACIENTE\JornadaPaciente.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/JORNADA_PACIENTE "3-tests\0-JORNADA_PACIENTE\JornadaPaciente.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/JORNADA_PACIENTE "3-tests\0-JORNADA_PACIENTE\JornadaPaciente.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/0-JORNADA_PACIENTE/1-Cadastro de Paciente/CadastroDePacienteSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/2-Cadastrar Pre-Internacao/CadastrarPreInternacaoSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/3-Realizar pre-agendamento cirurgico/RealizarPreAgendamentoCirurgicoSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/4-Consultar Cadastro de Paciente/ConsultarCadastroDePacienteSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/5-Realizar agendamento cirurgico/RealizarAgendamentoCirurgicoSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/6-Realizar atendimento de internacao/RealizarAtendimentoInternacaoConvParticularSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/7-Gerar um aviso de cirurgia/GerarAvisoCirurgiaSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/8-Informar tipo anestesia/InformarTipoAnestesiaSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/9-Informar equipamentos/InformarEquipamentosSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/10-Associar os exames de imagem no aviso de cirurgia/AssociarExamesImagemAvisoCirurgiaSteps.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown    Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          smoke_jornada_paciente
# Caso de teste "ID_CT" regitrado no do gerenciador
${filtro}         SCR0JSMK-001
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR0JSMK-001:Jornada do Paciente
# robot -v browser:chrome -t "SCR0JSMK-001:Jornada do Paciente" -d ./5-results/0-JORNADA_PACIENTE "3-tests\0-JORNADA_PACIENTE\JornadaPaciente.robot"
# robot -v browser:firefox -t "SCR0JSMK-001:Jornada do Paciente" -d ./5-results/0-JORNADA_PACIENTE "3-tests\0-JORNADA_PACIENTE\JornadaPaciente.robot"
### Registros gravados com sucesso (2 registros gravados).
#SMF-9620:Cadastrar o paciente
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    Acessar a tela "Atendimento>Internação>Atendimento>Cadastro de Paciente"@nprint @las
    Informar os campos que foram configurados como obrigatorios na tela@print
    Clicar no botao [Salvar]|${dados}[cadPacMsgEsperada]|
    Captura codigo do Paciente Cadastrado|${suite}|${dados}[id]|
## Valida Mensagem
#SMF-8251:Cadastrar Pré-Internação com Convênio do Tipo "Particular"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    Acessar a tela "Atendimento>Internação>Atendimento>Pré-Internação"@nprint @nlas
    Preencher campos |${dados}[cadPacOutputCodPaciente]|,|${dados}[preIntOrigem]|,|${dados}[preIntCodMedico]|,|${dados}[preIntCodEspecialidade]|,|${dados}[preIntCodConvenio]|,|${dados}[preIntCodPlano]|,|${dados}[preIntCodProcedimento]|,|${dados}[preIntAcomodacao]|,|${dados}[preAgTipoInternacao]|,|${dados}[preIntAcompanhante]|,|${dados}[preIntCodServico]|@nprint
    Clicar no botao [Salvar]|${dados}[preIntMsgEsperada]|
# SMF-8250:Cadastrar Pré-Internação com Convênio do Tipo Convênio
#    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
#    Acessar a tela "Atendimento>Internação>Atendimento>Pré-Internação"@nprint @nlas
#    Preencher campos |${dados}[cadPacOutputCodPaciente]|,|${dados}[preIntOrigem]|,|${dados}[preIntCodMedico]|,|${dados}[preIntCodEspecialidade]|,|${dados}[preIntCodConvenio]|,|${dados}[preIntCodPlano]|,|${dados}[preIntCodProcedimento]|,|${dados}[preIntAcomodacao]|,|${dados}[preAgTipoInternacao]|,|${dados}[preIntAcompanhante]|,|${dados}[preIntCodServico]|@nprint
#    Clicar no botao [Salvar]|${dados}[preIntMsgEsperada]|
#SMF-9621:Consultar o cadastro do paciente para gerar uma internação
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    #Pre-condicao: Executar a tela de Registro de Internacao atraves de uma tela de consulta [Sim]
    Acessar a tela "Atendimento>Internação>Atendimento>Internação"@nprint @nlas
    Pesquisar paciente pelo Nome |${dados}[cadPacOutputNomePaciente]|
    Selecionar o nome na lista e confirmar
    Clicar no botao [Internar]||
#SMF-9644:Realizar Atendimento de Internação vinculando uma pré-internação por convênio particular
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    #Acessar a tela "Atendimento>Internação>Atendimento>Internação"@nprint @nlas
    #Pre-condicao: Executar a tela de Registro de Internacao atraves de uma tela de consulta [Não]
    #Pesquisar pre-internacao existente pelo codigo do paciente |${dados}[cadPacOutputCodPaciente]|
    Clicar no botao [Sim]|${dados}[intPacMsgEsperada]|
    Clicar no botao [OK]||
    Revisar os dados de internacao incluindo leito |${dados}[intPacCodLeito]|,|${dados}[preAgDtHrPrevInter]|@nprint
    Clicar no botao [Salvar]|${dados}[preIntMsgEsperada]|
    Clicar no botao [Imprimir]||
    #Selecionar o check box de um relatório na lista e clicar no botão <Imprimir marcados>
#SMF-9619:Realizar um pré-agendamento cirúrgico
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Pré-Agendamento Cirúrgico>Pré-Agendamento Cirurgico"@nprint @nlas
    Preencher campos da tela de pre-agendamento |${dados}[preAgDtHr]|,|${dados}[preAgDtHrSugerida]|,|${dados}[preAgTempoPrev]|,|${dados}[preAgDtHrPrevInter]|,|${dados}[cadPacOutputCodPaciente]|,|${dados}[preAgTipoInternacao]|,|${dados}[agCirurCentroCirurgico]|,|${dados}[preAgSalaCirurgica]|,|${dados}[preIntCodMedico]|@nprint
    Clicar no botao [Adicionar Cirurgia]
    Preencher os campos da cirurgia |${dados}[codCirurgia]|,|${dados}[preIntCodConvenio]|,|${dados}[preIntCodPlano]|,|${dados}[potencialContaminacao]|,|${dados}[grupoCirurgia]|,|${dados}[preIntCodMedico]|,|${dados}[atividadeMedica]|@nprint
    Clicar no botao [Retornar]||
    Clicar no botao [Sim]|${dados}[preAgCirurMsgEsperada]|
#SMF-9623:Realizar agendamento cirúrgico
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Agendamento"@nprint @nlas
    Preencher campos da tela de agendamento cirurgico |${dados}[agCirurCentroCirurgico]|,|${dados}[preAgSalaCirurgica]|,|${dados}[codCirurgia]|,|${dados}[preIntCodConvenio]|,|${dados}[preIntCodPlano]|,|${dados}[preIntCodMedico]|,|${dados}[preIntCodEspecialidade]|@print
    Clicar no botao [1-Agendar]||
    Preencher os campos e confirmar |${dados}[cadPacOutputCodPaciente]|,|${dados}[agCirurUnidInternacao]|,|${dados}[agCirurEqpMedica]|,|${dados}[agCirurAnestesista]|,|${dados}[agCirurNumCid]|
    Clicar no botao [Não]|${dados}[agCirurMsgEsperada]|
#SMF-9622:Gerar um aviso de cirurgia
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"@nprint @las
    Preencher os campos |${dados}[preAgDtHrPrevInter]|,|${dados}[preAgTempoPrev]|,|${dados}[cadPacOutputCodPaciente]|,|${dados}[agCirurNumCid]|,|${dados}[agCirurUnidInternacao]|,|${dados}[agCirurCentroCirurgico]|,|${dados}[preAgSalaCirurgica]|,|${dados}[agCirurEqpMedica]|,|${dados}[preIntCodMedico]|@print
    Clicar no botao [Salvar]||
# #SMF-9625:Informar o tipo da anestesia no aviso de cirurgia
#    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"
#    Clicar no botão Pesquisar
# #SMF-9626:Informar os equipamentos no aviso de cirurgia
#    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"
#    Clicar no botão Pesquisar
#    Informar o código do aviso de cirurgia
#    Clicar no botão executar
#    Clicar no botão Equipamento
#    Selecionar um equipamento na lista
#    Informar a quantidade solicitada
#    Clicar no botão Salvar

SMF-9630:Associar os exames de imagem no aviso de cirurgia
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"@nprint @las
    Clicar no botao |Pesquisa|
    Informar o codigo do aviso de cirurgia |111|
    Clicar no botao [Executar]||
    Clicar no botao [Imagem]||
    Selecionar um exame de imagem e o setor na lista de valores
    Informar a quantidade para o exame
    Clicar no botao [Salvar]||
    Clicar no botao [Retornar]||

SMF-9632:Associar os exames laboratoriais no aviso de cirurgia
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"@nprint @las
    Clicar no botao [Pesquisa]||
    Informar o codigo do aviso de cirurgia |111|
    Clicar no botao [Executar]||
    Clicar no botao [Laboratorio]||
    Selecionar um exame de imagem e o setor na lista de valores
    Informar a quantidade para o exame
    Clicar no botao [Salvar]||
    Clicar no botao [Retornar]||
