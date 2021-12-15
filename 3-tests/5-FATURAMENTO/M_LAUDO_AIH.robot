#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Laudo médico para emissão de AIH
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_LAUDO_AIH.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_LAUDO_AIH.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_LAUDO_AIH.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_LAUDO_AIH.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_LAUDO_AIH_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_laudo_aih
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMLAUDOAIH-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMLAUDOAIH-001:Fluxo Principal" -d ./5-results/SCR5FMLAUDOAIH-001 "3-tests/5-FATURAMENTO/M_LAUDO_AIH.robot"
# robot -v browser:firefox -t "SCR5FMLAUDOAIH-001:Fluxo Principal" -d ./5-results/SCR5FMLAUDOAIH-001 "3-tests/5-FATURAMENTO/M_LAUDO_AIH.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMLAUDOAIH-001"
    Acessar a tela "Faturamento>Faturamento de Internação SUS (AIH)>Lançamentos>Laudo AIH"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Codigo Paciente |${dados}[CdPaciente]| |${dados}[MsgConfirmarPaciente]|
    Validar Campos com Preenchimento Automatico |${dados}[Paciente]| |${dados}[Medico]| |${dados}[Procedimento]|
    Preencher Dados do Laudo |${dados}[DtEmissao]| |${dados}[EstSolicitante]| |${dados}[CaraterAtend]| |${dados}[Especialidade]| |${dados}[Prestador]| |${dados}[CIDSecundario]| |${dados}[CIDAssociado]| |${dados}[PrincipaisSinais]| |${dados}[JustInternacao]| |${dados}[ResultProvaDiag]| |${dados}[DiagInicial]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
    Imprimir Laudo

 