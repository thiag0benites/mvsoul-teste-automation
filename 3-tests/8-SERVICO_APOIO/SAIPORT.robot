#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Protocolos de Saída de Documentos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\SAIPORT.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\SAIPORT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\SAIPORT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\SAIPORT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/8-SERVICO_APOIO/SAIPORT_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            SAIPORT
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SSAIPORT-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SSAIPORT-001:Fluxo Principal" -d ./5-results/SCR8SSAIPORT-001 "3-tests/8-SERVICO_APOIO/SAIPORT.robot"
# robot -v browser:firefox -t "SCR8SSAIPORT-001:Fluxo Principal" -d ./5-results/SCR8SSAIPORT-001 "3-tests/8-SERVICO_APOIO/SAIPORT.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SSAIPORT-001"
    Acessar a tela "Serviços de Apoio>Serviço Arquivo Médico>SAME>Saída de Documentos>Por Paciente / Agenda Médica"@nprint @las
    Preencher Same |${dados}[Same]|
    Validar Acesso a Tela |Protocolos de Saída de Documentos|

    Preencher Campos do Protocolo |${dados}[PrestadorOri]| |${dados}[PrestadorDes]| |${dados}[Transp]| |${dados}[Solicitante]| |${dados}[Motivo]| 
    Preencher Itens, Salvar e Imprimir |${dados}[Matricula]|


