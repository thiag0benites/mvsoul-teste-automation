#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Alteração de Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_TROPLA.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_TROPLA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_TROPLA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_TROPLA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_TROPLA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_tropla
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMTROPLA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMTROPLA-001:Fluxo Principal" -d ./5-results/SCR2AMTROPLA-001 "3-tests/2-ASSISTENCIAL/M_TROPLA.robot"
# robot -v browser:firefox -t "SCR2AMTROPLA-001:Fluxo Principal" -d ./5-results/SCR2AMTROPLA-001 "3-tests/2-ASSISTENCIAL/M_TROPLA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMTROPLA-001"
    Acessa a Tela Pela Busca |M_TROPLA||Ocorrência do Plantão| @las
    #Acessar a tela "Clínica e Assistencial>Gerenciamento de Unidades>Enfermagem>Ocorrência do Plantão"@nprint @las
    Preencher Dados da Ocorrencia |${dados}[UnidInternacao]| |${dados}[DtInicial]| |${dados}[DtFinal]| |${dados}[Leito]| |${dados}[Ocorrencia]| |${dados}[Descricao]|
    Imprimir Relatorio Ocorrencia de Plantao




