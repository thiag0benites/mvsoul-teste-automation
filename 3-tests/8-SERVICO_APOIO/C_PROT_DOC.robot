#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Consulta de Movimentações
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_PROT_DOC.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_PROT_DOC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_PROT_DOC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\C_PROT_DOC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/8-SERVICO_APOIO/C_PROT_DOC_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            c_prot_doc
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SCPROTDOC-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SCPROTDOC-001:Fluxo Principal" -d ./5-results/SCR8SCPROTDOC-001 "3-tests/8-SERVICO_APOIO/C_PROT_DOC.robot"
# robot -v browser:firefox -t "SCR8SCPROTDOC-001:Fluxo Principal" -d ./5-results/SCR8SCPROTDOC-001 "3-tests/8-SERVICO_APOIO/C_PROT_DOC.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SCPROTDOC-001"
    Acessar a tela "Serviços de Apoio>Movimentação de Documentos>Consultas>Movimentações por Atendimento"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Consultar Movimentacoes
    Validar Consulta de Movimentacoes |${dados}[Setor]| |${dados}[CdAtendimento]| |${dados}[Paciente]| 



