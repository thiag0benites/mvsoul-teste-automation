#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_GERA_PROG_STEPS "3-tests\6-CONTROLADORIA\O_GERA_PROG.robot"
# chrome:         robot -v browser:firefox -d ./5-results/O_GERA_PROG_STEPS "3-tests\6-CONTROLADORIA\O_GERA_PROG.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_GERA_PROG_STEPS "3-tests\6-CONTROLADORIA\O_GERA_PROG.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_GERA_PROG_STEPS "3-tests\6-CONTROLADORIA\O_GERA_PROG.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources/6-CONTROLADORIA/O_GERA_PROG_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
#Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          o_gera_prog
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6COGERAPROG-001 : Fluxo Principal
# robot -v browser:chrome -t "SCR6COGERAPROG-001 : Fluxo Principal" -d ./5-results/SCR6COGERAPROG-001 "3-tests/6-CONTROLADORIA/O_GERA_PROG.robot"
# robot -v browser:firefox -t "SCR6COGERAPROG-001 : Fluxo Principal" -d ./5-results/SCR6COGERAPROG-001 "3-tests/6-CONTROLADORIA/O_GERA_PROG.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6COGERAPROG-001"
    Acessa a Tela Pela Busca |O_GERA_PROG||Cadastro| @las
    Inserir no campo Descricao a descricao da previsao a ser cadastrada |${dados}[Descricao2]|
    Informar no campo dia o dia previsto de pagamento |${dados}[Dia]|
    Selecionar no campo Periodicidade |${dados}[Periodo]|
    Selecionar no campo Vencto dia nao util |${dados}[Vencimento]|
    Inserir no campo Valor |${dados}[Valor]|
    Inserir no campo mes ano inic do inicio da previsao |${dados}[MesAnoInicial]| |${dados}[MesAnoFinal]|
    Selecionar na lov do campo tipo documento |${dados}[TipoDoc]|
    Selecionar na lov do campo Fornecedor |${dados}[Fornecedor]|
    Indicar no campo tipo de programacao da previsao |${dados}[Programacao]|
    Selecionar no campo Contabilizar |${dados}[Contabilizar]| |${dados}[PrevisaoConta]| |${dados}[TipoVencimento]|
    #Selecionar no campo Tp Prev Contab |${dados}[PrevisaoConta]|
    #Verificar a informacao contida no campo Tipo de Vencimento |${dados}[TipoVencimento]|
    Selecionar no campo historico padrao |${dados}[Historico]|
    Selecionar o botao Previsao
    Informar no bloco Compartilhamento das contas no campo Setor de Producao atraves da lov ou digitando o setor
    Selecionar no campo Conta de Custo a conta de custo |${dados}[ContaCusto]|
    Informar no campo Valor Compartilhamento |${dados}[ValorCompartilha]|
    Aperte no botao Gerar
    Captura do protocolo da previsao de pagamentos|${suite}|${dados}[id]|


