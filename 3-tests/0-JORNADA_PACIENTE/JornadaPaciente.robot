#################################################################################################################################################################
# Autor: Letícia, Gabriel e Thiago
# Decrição: Smoke Test da Jornada do Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/0-JORNADA_PACIENTE "3-tests\0-JORNADA_PACIENTE\JornadaPaciente.robot"
# firefox: robot -v browser:firefox -d ./5-results/JORNADA_PACIENTE "3-tests\0-JORNADA_PACIENTE\JornadaPaciente.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/JORNADA_PACIENTE "3-tests\0-JORNADA_PACIENTE\JornadaPaciente.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/JORNADA_PACIENTE "3-tests\0-JORNADA_PACIENTE\JornadaPaciente.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/0-JORNADA_PACIENTE/1-Cadastro de Paciente/CadastroDePacienteSteps.robot
Resource            ../../1-resources/0-JORNADA_PACIENTE/2-Cadastrar Pre-Internacao/CadastrarPreInternacaoSteps.robot
Resource            ../../1-resources/0-JORNADA_PACIENTE/3-Realizar pre-agendamento cirurgico/RealizarPreAgendamentoCirurgicoSteps.robot
Resource            ../../1-resources/0-JORNADA_PACIENTE/4-Consultar Cadastro de Paciente/ConsultarCadastroDePacienteSteps.robot
Resource            ../../1-resources/0-JORNADA_PACIENTE/5-Realizar agendamento cirurgico/RealizarAgendamentoCirurgicoSteps.robot
Resource            ../../1-resources/0-JORNADA_PACIENTE/6-Realizar atendimento de internacao/RealizarAtendimentoInternacaoConvParticularSteps.robot
Resource            ../../1-resources/0-JORNADA_PACIENTE/7-Gerar um aviso de cirurgia/GerarAvisoCirurgiaSteps.robot
Resource            ../../1-resources/0-JORNADA_PACIENTE/8-Informar tipo anestesia/InformarTipoAnestesiaSteps.robot
Resource            ../../1-resources/0-JORNADA_PACIENTE/9-Informar equipamentos/InformarEquipamentosSteps.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            smoke_jornada_paciente
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMK-001:Jornada do Paciente
# robot -v browser:chrome -t "SMK-001:Jornada do Paciente" -d ./5-results/SMK-001 "3-tests/0-JORNADA_PACIENTE/JornadaPaciente.robot"
# robot -v browser:firefox -t "SMK-001:Jornada do Paciente" -d ./5-results/SMK-001 "3-tests/0-JORNADA_PACIENTE/JornadaPaciente.robot"
### Registros gravados com sucesso (2 registros gravados).
#SMF-9620:Cadastrar o paciente
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SMK-001"
    Acessar a tela "Atendimento>Internação>Atendimento>Cadastro de Paciente"@nprint @las
    Informar os campos que foram configurados como obrigatorios na tela@print
    Clicar no botao [Salvar]|${dados}[cadPacMsgEsperada]|
    Captura codigo do Paciente Cadastrado|${suite}|${dados}[id]|
## Valida Mensagem
#SMF-8250:Cadastrar Pré-Internação com Convênio do Tipo Convênio
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SMK-001"
    Acessar a tela "Atendimento>Internação>Atendimento>Pré-Internação"@nprint @nlas
    Preencher campos |${dados}[cadPacOutputCodPaciente]|,|${dados}[preIntOrigem]|,|${dados}[preIntCodMedico]|,|${dados}[preIntCodEspecialidade]|,|${dados}[preIntCodConvenio]|,|${dados}[preIntCodPlano]|,|${dados}[preIntCodProcedimento]|,|${dados}[preIntAcomodacao]|,|${dados}[preAgTipoInternacao]|,|${dados}[preIntAcompanhante]|,|${dados}[preIntCodServico]|@nprint
    Clicar no botao [Salvar]|${dados}[preIntMsgEsperada]|
#SMF-9619:Realizar um pré-agendamento cirúrgico
   ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SMK-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Pré-Agendamento Cirúrgico>Pré-Agendamento Cirurgico"@nprint @nlas
    Preencher campos da tela de pre-agendamento |${dados}[preAgDtHr]|,|${dados}[preAgDtHrSugerida]|,|${dados}[preAgTempoPrev]|,|${dados}[preAgDtHrPrevInter]|,|${dados}[cadPacOutputCodPaciente]|,|${dados}[preAgTipoInternacao]|,|${dados}[preAgSalaCirurgica]|,|${dados}[preIntCodMedico]|@nprint
    Clicar no botao [Adicionar Cirurgia]
    Preencher os campos da cirurgia |${dados}[codCirurgia]|,|${dados}[preIntCodConvenio]|,|${dados}[preIntCodPlano]|,|${dados}[potencialContaminacao]|,|${dados}[grupoCirurgia]|,|${dados}[preIntCodMedico]|,|${dados}[atividadeMedica]|@nprint
    Clicar no botao [Retornar]||
    Clicar no botao [Sim]|${dados}[PreAgCirurgiaMsg]|    
#SMF-9621:Consultar o cadastro do paciente para gerar uma internação
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SMK-001"
    #Pre-condicao: Executar a tela de Registro de Internacao atraves de uma tela de consulta [Sim]
    Acessar a tela "Atendimento>Internação>Atendimento>Internação"@nprint @nlas
    Pesquisar paciente pelo Nome |${dados}[cadPacOutputNomePaciente]|
    Selecionar o nome na lista e confirmar
    Clicar no botao [Internar]||
#SMF-9623:Realizar agendamento cirúrgico
    # ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SMK-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Agendamento"@nprint @nlas
    Preencher campos da tela de agendamento |${dados}[agCirurCentroCirurgico]|,|${dados}[agCirurSalaCirurgica]|,|${dados}[agCirurCirurgia]|,|${dados}[agCirurConvenio]|,|${dados}[agCirurPlano]|,|${dados}[agCirurPrestadorCirurgiao]|,|${dados}[agCirurMedicoAssociado]|@print
    # Clicar no botão Agendar
    # Preencher os campos |${dados}[codPaciente]|,|${dados}[tipoAcomodacao]|,|${dados}[undInternacao]|,|${dados}[eqpMedica]|,|${dados}[anestesista]|,|${dados}[numCID]|
    # Clicar no botão 8-Confirmar
# #SMF-9644:Realizar Atendimento de Internação vinculando uma pré-internação por convênio particular
#     Acessar a tela "Atendimento>Internação>Atendimento>Internação"
#     Informar o código do Paciente 
#     Clicar no botão Pesquisar
#     Selecionar nome do Paciente   
#     Clicar no botão Internar 
#     Clicar no botão Sim
#     Clicar no botão OK
# #SMF-9622:Gerar um aviso de cirurgia
#     Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"
#     Preencher os campos |${dados}[dtHr]|,|${dados}[tempoPrevIntern]|,|${dados}[codPaciente]|,|${dados}[CID]|,|${dados}[unidadeInternacao]|,|${dados}[centroCirurgico]|,|${dados}[salaCirurgica]|,|${dados}[medicoAssociado]|
#     Clicar no botão Salvar
# #SMF-9625:Informar o tipo da anestesia no aviso de cirurgia    
#     Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"
#     Clicar no botão Pesquisar
# #SMF-9626:Informar os equipamentos no aviso de cirurgia
#     Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"
#     Clicar no botão Pesquisar
#     Informar o código do aviso de cirurgia
#     Clicar no botão executar 
#     Clicar no botão Equipamento
#     Selecionar um equipamento na lista 
#     Informar a quantidade solicitada 
#     Clicar no botão Salvar
# #SMF-9630:Associar os exames de imagem no aviso de cirurgia

# #SMF-9632:Associar os exames laboratoriais no aviso de cirurgia