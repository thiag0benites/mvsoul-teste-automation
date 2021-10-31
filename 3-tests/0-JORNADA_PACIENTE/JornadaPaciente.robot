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
Resource          ../../1-resources/0-JORNADA_PACIENTE/9-Aviso Cirurgia/AvisoCirurgiaSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/10-Associar os exames de imagem no aviso de cirurgia/AssociarExamesImagemAvisoCirurgiaSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/16-Registrar a descrição cirurgica/RegistrarDescricaoCirurgicaSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/17-Confirmar a cirurgia/ConfirmarCirurgiaRealizadaSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/20-Realizar entrada de produtos normais controle de lote e validade e sem OC/RealizarEntradaProdutosNormaisControleLoteValidadeSemOcSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/21-Abertura de inventario para alguns produtos/AberturaInventarioAlgunsProdutosSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/22-Digitar produtos do Inventario/DigitarProdutosInventarioSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/23-Geracao do inventario/GeracaoInventarioSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/25-Atender a solicitacao do paciente/AtenderSolicitacaoPacienteSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/26-Devolucao de Produtos/DevolucaoProdutosSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/27-Informar gastos Sala/InformarGastosSalaSteps.robot
Resource          ../../1-resources/0-JORNADA_PACIENTE/29-Realizar alta hospitalar/RealizarAltaHospitalarSteps.robot
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
# #SMF-9622:Gerar um aviso de cirurgia
#     ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
#     Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"@nprint @nlas
#     Preencher os campos e adicionar nova cirurgia |${dados}[preAgDtHrPrevInter]|,|${dados}[preAgTempoPrev]|,|${dados}[cadPacOutputCodPaciente]|,|${dados}[agCirurNumCid]|,|${dados}[agCirurUnidInternacao]|,|${dados}[agCirurCentroCirurgico]|,|${dados}[preAgSalaCirurgica]|,|${dados}[agCirurEqpMedica]|,|${dados}[preIntCodMedico]|@print
#     Preencher os campos do aviso de cirurgia |${dados}[codCirurgia]|,|${dados}[preIntCodConvenio]|,|${dados}[preIntCodPlano]|,|${dados}[potencialContaminacao]|,|${dados}[grupoCirurgia]|,|${dados}[preIntCodMedico]|,|${dados}[atividadeMedica]|,|${dados}[preAgCirurMsgEsperada]|@nprint
#     Clicar no botao [Salvar]|${dados}[preIntMsgEsperada]|
#     Captura do codigo do aviso de cirurgia|${suite}|${dados}[id]|
#     Clicar no botao [Sair]||
#SMF-8251:Cadastrar Pré-Internação com Convênio do Tipo Particular
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    Acessar a tela "Atendimento>Internação>Atendimento>Pré-Internação"@nprint @nlas
    Preencher campos |${dados}[cadPacOutputCodPaciente]|,|${dados}[preIntOrigem]|,|${dados}[preIntCodMedico]|,|${dados}[preIntCodEspecialidade]|,|${dados}[preIntCodConvenio]|,|${dados}[preIntCodPlano]|,|${dados}[preIntCodProcedimento]|,|${dados}[preIntAcomodacao]|,|${dados}[preAgTipoInternacao]|,|${dados}[preIntAcompanhante]|,|${dados}[preIntCodServico]|@nprint
    Clicar no botao [Salvar]|${dados}[preIntMsgEsperada]|
    Clicar no botao [Sair]||
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
    Captura codigo do Atendimento Cadastrado|${suite}|${dados}[id]|
    Clicar no botao [Sair]||
    #Clicar no botao [Imprimir]||
    #Selecionar o check box de um relatório na lista e clicar no botão <Imprimir marcados>
#SMF-9619:Realizar um pré-agendamento cirúrgico
   ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Pré-Agendamento Cirúrgico>Pré-Agendamento Cirurgico"@nprint @nlas
    Preencher campos da tela de pre-agendamento e adicionar a Cirurgia |${dados}[preAgDtHr]|,|${dados}[preAgDtHrSugerida]|,|${dados}[preAgTempoPrev]|,|${dados}[preAgDtHrPrevInter]|,|${dados}[cadPacOutputCodAtendimento]|,|${dados}[preAgTipoInternacao]|,|${dados}[preAgSalaCirurgica]|,|${dados}[preIntCodMedico]|@nprint
    Preencher os campos da cirurgia |${dados}[codCirurgia]|,|${dados}[preIntCodConvenio]|,|${dados}[preIntCodPlano]|,|${dados}[potencialContaminacao]|,|${dados}[grupoCirurgia]|,|${dados}[preIntCodMedico]|,|${dados}[atividadeMedica]|@nprint
    Clicar no botao [Sim]|${dados}[preAgCirurMsgEsperada]|
    Captura do codigo do aviso de cirurgia|${suite}|${dados}[id]|
#SMF-9623:Realizar agendamento cirúrgico
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Agendamento"@nprint @nlas
    Preencher campos da tela de agendamento cirurgico |${dados}[agCirurCentroCirurgico]|,|${dados}[preAgSalaCirurgica]|,|${dados}[codCirurgia]|,|${dados}[preIntCodConvenio]|,|${dados}[preIntCodPlano]|,|${dados}[preIntCodMedico]|,|${dados}[preIntCodEspecialidade]|@print
    Clicar no botao [1-Agendar]||
    #Preencher os campos e confirmar |${dados}[cadPacOutputCodPaciente]|,|${dados}[agCirurUnidInternacao]|,|${dados}[agCirurEqpMedica]|,|${dados}[agCirurAnestesista]|,|${dados}[agCirurNumCid]|
    Preencher os campos e confirmar |${dados}[cadPacOutputCodPaciente]|,|${dados}[agCirPacMsgEsperada]|,|${dados}[agCirurUnidInternacao]|,|${dados}[agCirurEqpMedica]|,|${dados}[agCirurAnestesista]|,|${dados}[agCirurNumCid]|
    Clicar no botao [Não]|${dados}[agCirurMsgEsperada]|
#SMF-9625:Informar o tipo da anestesia no aviso de cirurgia
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"    
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"
    Clicar no botao [Pesquisar]||
#SMF-9626:Informar os equipamentos no aviso de cirurgia
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"@nprint @nlas
    Clicar no botao [Pesquisar]||
    Informar o codigo do aviso de cirurgia |111|
    Clicar no botao [Executar]||
    Clicar no botao [Equipamento]||
    Selecionar um equipamento na lista
    Informar a quantidade solicitada 
    Clicar no botao [Salvar]||
# SMF-9630:Associar os exames de imagem no aviso de cirurgia
    # Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"@nprint @nlas
    Clicar no botao [Pesquisar]||
    Informar o codigo do aviso de cirurgia |111|
    Clicar no botao [Executar]||
    Clicar no botao [Imagem]||
    Selecionar um exame de imagem e o setor na lista de valores
    Informar a quantidade para o exame
    Clicar no botao [Salvar]||
    Clicar no botao [Retornar]||
# SMF-9632:Associar os exames laboratoriais no aviso de cirurgia
    # Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"@nprint @nlas
    Clicar no botao [Pesquisa]||
    Informar o codigo do aviso de cirurgia |111|
    Clicar no botao [Executar]||
    Clicar no botao [Laboratorio]||
    Selecionar um exame de imagem e o setor na lista de valores
    Informar a quantidade para o exame
    Clicar no botao [Salvar]||
    Clicar no botao [Retornar]||
# SMF-9633:Associar sangue e derivados no aviso de cirurgia
    # Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Aviso de Cirurgia"@nprint @nlas
    Clicar no botao [Pesquisa]||
    Informar o codigo do aviso de cirurgia |111|
    Clicar no botao [Executar]||
    Clicar no botao [Sangue e Derivados]||
    Selecionar um exame de imagem e o setor na lista de valores
    Informar a quantidade para o exame
    Clicar no botao [Salvar]||
    Clicar no botao [Retornar]||
# SMF-9634:Informar os prestadores no aviso da cirurgia
    Clicar no botao [Pesquisa]||
    Informar o codigo do aviso de cirurgia |111|
    Clicar no botao [Executar]||
    Clicar no botao [Prestadores]||
    Selecionar um exame de imagem e o setor na lista de valores
    Informar a quantidade para o exame
    Clicar no botao [Salvar]||
    Clicar no botao [Retornar]||
# SMF-9636:Informar o produto consignado ou avulso no aviso de cirurgia
    Clicar no botao [Pesquisa]||
    Informar o codigo do aviso de cirurgia |111|
    Clicar no botao [Executar]||
    Clicar no botao [Avulsos\Consignados]||
    Selecionar um exame de imagem e o setor na lista de valores
    Informar a quantidade para o exame
    Clicar no botao [Salvar]||
    Clicar no botao [Retornar]||
# SMF-???:Digitar gasto de sala sem salvar (????)
# SMF-9635:Registrar a descrição cirúrgica (Amanda in progress)
# SMF-9635:Registrar a descricao cirurgica
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Descrição Cirúrgica"@nprint @nlas
    Informar o codigo do aviso de cirurgia |111|
    Clicar no botao [Executar]||
    Informar os campos Data de início da cirurgia |${dados}[descCirDtInicio]|,Data fim da cirurgia |${dados}[descCirDtFim]|, CID pré operatório |${dados}[agCirurNumCid]|, CID pós operatório |${dados}[agCirurNumCid]|
    Clicar no botao [NovaDescricao]||
    Descrever a cirurgia
    Clicar no botao [Salvar]||
    Clicar no botao [Retornar]|${dados}[descCirMsgEsperada]|
#SMF-9638:Confirmar a cirurgia realizada
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Confirmação da Cirurgia"@nprint @nlas
    Informar o codigo do aviso de cirurgia |111|
    Clicar no botao [Executar]||
    # clicar no tab após o prenchimento de cada campo
    Informar os campos Ent. realizacao |${dados}[confCirurDataAviso]|, Inicio cirurgia |${dados}[confCirurInicio]|, Fim anest |${dados}[confCirurFimAnest]|, Inicio limpeza |${dados}[confCirurInicioLimpeza]| 
    #confCirurMsgAviso - Informação: O(s) tempo(s) previsto(s) da(s) cirurgia(s) diverge(m) do(s) tempo(s) realizado(s)
    Clicar no botao [Confirmar]|${dados}[confCirurMsgAviso]|
    # confCirurMsgConfCirurgia - A Confirmação da Cirurgia foi realizada com sucesso !
    Valida confirmacao de cirurgia |${dados}[confCirurMsgConfCirurgia]|

# SMF-9647:Imprimir o relatório Ficha de Cirurgia Descritiva 
#     Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Relatórios>Operacionais>Ficha Descritiva da Cirurgia"@nprint @nlas
#     Preencher os campos Aviso de cirurgia |${dados}[impRelAvisoCirurgia]|, Descricao cirurgica |${dados}[impRelDescCirurgia]|
#     Clicar no botao [Imprimir]||
#     Valida abertura relatorio
# SMF-4046:Solicitar produtos ao estoque
#     Acessar a tela "Materiais e Logística>Almoxarifado>Solicitações>Produtos ao Estoque"@nprint @nlas
#     Usuario devera marcar o checkbox Estoque |${dados}[checkBoxEstoque]|
#     Preencher os campos Estoque |${dados}[66]|, Estoque destino |${dados}[67]|, Setor |${dados}[solProdSetor]|
#     Validar redirecionamento para Produtos Solicitados
#     Preencher os campos Produto |${dados}[solProdProduto]|, Qtde |${dados}|solProdQtde||
#     Clicar no botao [Salvar Registro]|Atenção: Imprimir Solicitação?|
#     Clicar no botao [Não]|Atenção: Movimentação Salva com Sucesso ! Deseja Limpar a Tela?|

# SMF-794:Realizar entrada de produtos normais controle de lote e validade e sem OC
#     Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Entradas>Entrada de Produtos"@nprint @nlas
#     Informar a opcao "Nota Fiscal" no campo <Tipo de Documento>
#     Indicar o estoque onde será efetuada a entrada do produto no campo <Estoque>
#     Informar os campos Nr Doc |${dados}[realEntProdNrDoc]|,Serie |${dados}[realEntProdSerie]|, Fornecedor |${dados}[realEntProdFornecedor]|, Dt Emissao |${dados}[rrealEntProdDtEmissao]|, CFOP |${dados}[realEntProdCFOP]|, Vl Total da Nota |${dados}[realEntProdVlTotalNota]|
#     Clicar no botao [Produtos]||
#     Informar os campos Produto |${dados}[realEntProdCodProd]|, Quantidade |${dados}[realEntProdQtde]|, Valor unitario |${dados}[realEntProdVrUnit]|
#     Clicar no botao [Sim] da mensagem
#     Clicar no botao [Sair]||
#     Clicar no botao [Duplicata]||
#     Informar os campos Parcela |${dados}[realEntProdParcela]|, Data Vencimento |${dados}[realEntProdDtVencimento]|, Valor |${dados}[realEntProdValor]|
#     Clicar no botao [Concluir e Avaliar]||
#     Clicar no botao [Sim]|${dados}[realEntProdMsgEsperada]|
#     Clicar no botao [Sim] da mensagem

#SMF-786:Abertura de Inventário para Alguns Produtos
    Acessar a tela "Materiais e Logística>Almoxarifado>Inventário>Abertura do Inventário"@nprint @nlas
    Informar o <Codigo do Estoque>
    Informar o <Motivo>
    Informar o valor "Não" no campo <Digitar por etapas>
    Informar o <Codigo do Produto>
    Clicar no botao [Enter]||
    Clicar no botao [Salvar]|${dados}[abertInventMsgEsperada]|

# SMF-789:Digitar produtos do Inventario
#     Acessar a tela "Materiais e Logística>Almoxarifado>Inventário>Digitação dos Produtos"@nprint @nlas
#     Clicar no botao [Pesquisar]||
#     Preencher os campos codigo do produto |${dados}[digProdInvProduto]|, lote |${dados}[digProdInvLote]|, data de validade |${dados}[digProdInvValidade]|, Qrde. Estoque |${dados}[digProdInvQtdeEstoque]|
#     Concluir a digitação de todos os produtos acionar
#     Clicar no botao [Fechar Mov. do Usuário]|Fechamento da leitura realizado com sucesso!|

#GABRIEL
# SMF-791:Geracao do inventario
#     Acessar a tela "Materiais e Logística>Almoxarifado>Inventário>Abertura de inventário"@nprint @nlas
#     Informar o codigo da contagem realizada |${dados}[invCodContagem]|
#     Validar preenchimento automatico dos campos <Data>, <Estoque> e <Tipo de Contagem>
#     Clicar no botao [Confirmar]|Processo Completo.|
#SMF-753:Atender a solicitação do paciente
    Acessar a tela "Atendimento>Materiais e Logística>Almoxarifado>Solicitações>Atender"@nprint @nlas
    Informar o código no campo |solicitação|
    Clicar no botao [Executar]||
    Clicar no botao [Visualizar produtos]
    Clicar no botao [Retornar]
    Clicar no botao [Cod. do Produto]
    Informar os campos Produto |${dados}[atendSolicPacProduto]|, Lote |${dados}[atendSolicPacLote]|, Qtde. Disp |${dados}[atendSolicPacQtdeDisp]|
    Clicar no botao [Fecha a baixa]|${dados}[atendSolicPacMsgEsperada]|
#SMF-7617:Devolução de produtos
    Acessar a tela "Atendimento>Materiais e Logística>Almoxarifado>Solicitações>Devolução de Produtos"@nprint @nlas
    Marcar o check box <2- Setor> e preencher os seguintes campos com dados válidos |${dados}[DevProdMsgEsperada]|
    Clicar no botão [Sim] da mensagem e na tecla <TAB>
#     Informar todos os produtos digitados na saída |${dados}[DevProdMsgEsperadaFinal]|
#SMF-792:Informar gasto de sala
    Acessar a tela "Atendimento>Materiais e Logística>Almoxarifado>Movimentações>Saída de Produtos>Gasto de Sala"@nprint @nlas
    Informar o codigo do aviso de cirurgia |111|
    Clicar no botao [Digitar Cód. do Prod.]
    Informar o <Código do Produto>
    Informar a <Qtde. Disp.>
    Clicar no botao [Salvar]|${dados}[InfoGastSalaMsgEsperada]|
# SMF-8320:Realizar alta médica (erro no testlink)

SMF-8286:Realizar alta hospitalar
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    Acessar a tela "Atendimento>Internação>Atendimento>Alta>Efetivação>Alta Hospitalar"@nprint @las
    Informar o codigo de atendimento |${dados}[cadPacOutputCodAtendimento]|
    Preencher os campos |${dados}[altaHospPacMotivoAlta]|,|${dados}[altaHospPacTipoLimpeza]|,|${dados}[altaHospPacTipoCih]|,|${dados}[altaHospPacObsAlta]|@print
    Clicar no botao [3-Confirmar Alta]|${dados}[altaHospPacMsgEsperada]|   
    Clicar no botao [Sim]||
    Clicar no botao [Sair Alta]||
    Clicar no botao [Sair Alta]||
    # Seleciona na opção [Saída do Relatório] a opção 'Tela'
    # Clicar no botao [Imprimir]
    # Clicar no botao [Sair] da tela "Comprovante de Alta Hospitalar do Paciente"
    # Clicar no [Ok] da mensagem;