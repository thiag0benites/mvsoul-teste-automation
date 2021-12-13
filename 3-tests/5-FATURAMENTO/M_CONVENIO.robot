#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Cadastro de Convênios
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONVENIO.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONVENIO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONVENIO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_CONVENIO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_CONVENIO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_convenio
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMCONVENIO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMCONVENIO-001:Fluxo Principal" -d ./5-results/SCR5FMCONVENIO-001 "3-tests/5-FATURAMENTO/M_CONVENIO.robot"
# robot -v browser:firefox -t "SCR5FMCONVENIO-001:Fluxo Principal" -d ./5-results/SCR5FMCONVENIO-001 "3-tests/5-FATURAMENTO/M_CONVENIO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMCONVENIO-001"
    Acessa a Tela Pela Busca |M_CONVENIO||Convênios e Planos| @las
    #Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Gerais>Convênios e Planos"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Cancelar Consulta |${dados}[MensagemEsperada]|
    Prencher Dados Cadastrais |${dados}[Descricao]| |${dados}[FormaApresentacao]| |${dados}[RazaoSocial]| |${dados}[Email]| |${dados}[Contato]| |${dados}[CargoContato]| |${dados}[ContatoRecurso]| |${dados}[Logradouro]| |${dados}[Endereco]| |${dados}[NrEndereco]| |${dados}[Bairro]| |${dados}[Cidade]| |${dados}[UF]| |${dados}[Pais]| |${dados}[CEP]| |${dados}[Fone]| |${dados}[CNPJ]| |${dados}[InsMunicipal]| |${dados}[InsEstadual]|
    Preencher Dados do Faturamento |${dados}[IR]| |${dados}[ISS]| |${dados}[ConvEstrangeiro]| |${dados}[ModeloMatricula]| 
    Preencher Enderecos Adicionais |${dados}[EndCorresponcia]| |${dados}[BairroCorresp]| |${dados}[CidadeCorresp]| |${dados}[UFCorresp]| |${dados}[CEPCorresp]| |${dados}[EndCobranca]| |${dados}[BairroCobran]| |${dados}[CidadeCobran]| |${dados}[UFCobran]| |${dados}[CEPCobran]| 
    Acessar Aba Complemento |${dados}[AbaComplemento]|
    Preencher Dados do Financeiro |${dados}[Fornecedor]| |${dados}[DiasPgto]|
    Preencher Controle de Retorno de Atendimentos |${dados}[DiasAmb]| |${dados}[DiasExterno]| |${dados}[HorasUrgencia]|
    Marcar Checkbox Paciente Internado
    Preencher Requisicao Medica |${dados}[ValidMax]|
    Preencher Faixa de Guias |${dados}[QtdFimFaixa]| |${dados}[LimiteRemessa]|
    Preencher Configuracao para Taxa de Acrescimo |${dados}[Procedimento]| |${dados}[Percentual]| |${dados}[MotAuditoria]|
    Preencher Posicao do Codigo da Carteira |${dados}[CarteiraCaracter]| |${dados}[CarteiraQtd]| |${dados}[CarteiraFinal]| |${dados}[DtValidadeCaracter]| |${dados}[DtValidadeQtd]| |${dados}[DtValidadeFinal]|
    Preencher Guia de OPME |${dados}[DiasAutorizacao]| 
    Acessar aba Empresa |${dados}[AbaEmpresa]|
    Preencher Dados da Empresa |${dados}[CdEmpresa]| |${dados}[FormularioNF]| |${dados}[FormaApresentacaoEmp]|
    Clicar Botao Salvar
 