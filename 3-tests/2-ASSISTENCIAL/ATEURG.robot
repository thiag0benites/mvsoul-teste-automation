#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Atendimento de Urgência/Emergência
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\ATEURG.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\ATEURG.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\ATEURG.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\ATEURG.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/ATEURG_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AATEURG-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AATEURG-001:Fluxo Principal" -d ./5-results/SCR2AATEURG-001 "3-tests/2-ASSISTENCIAL/ATEURG.robot"
# robot -v browser:firefox -t "SCR2AATEURG-001:Fluxo Principal" -d ./5-results/SCR2AATEURG-001 "3-tests/2-ASSISTENCIAL/ATEURG.robot"
    Validar Configuracao de Acesso a Tela           ## Keyword para configurar parâmetro de acesso a tela principal ##
    Acessa a Tela Pela Busca
    #Acessar a tela "Atendimento>Urgência e Emergência>Atendimento>Atendimento"@nprint @no
    Validar Acesso a Tela |Atendimento de Urgência/Emergência|
    Clicar Botao Paciente   
    Pesquisar Pelo Paciente
    Preencher Campos Obrigatorios
    Clicar Botao Carteira
    Validar Informacoes Carteira
    Confirmar Atendimento 
    Sleep  5