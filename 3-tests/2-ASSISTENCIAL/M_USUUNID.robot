#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Usuário por Unidade de Internação
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_USUUNID.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_USUUNID.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_USUUNID.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_USUUNID.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_USUUNID_STEPS.robot

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
SCR2AMUSUUNID-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMUSUUNID-001:Fluxo Principal" -d ./5-results/SCR2AMUSUUNID-001 "3-tests/2-ASSISTENCIAL/M_USUUNID.robot"
# robot -v browser:firefox -t "SCR2AMUSUUNID-001:Fluxo Principal" -d ./5-results/SCR2AMUSUUNID-001 "3-tests/2-ASSISTENCIAL/M_USUUNID.robot"
    #Acessar a tela "Apoio a TI>Gestão de Usuários>Configurações de Acesso>Acessos Gerais>Usuário por Unidade de Internação e Setor"@nprint @las
    Acessa a Tela Pela Busca |M_USUUNID||Usuário por Unidade de Internação e Setor| @las
    Validar Acesso a Tela |Usuário por Unidade de Internação|
    Selecionar Usuario
    Selecionar Unidade de Internacao
    Validar Checkbox de Solicitacao Marcado
    Validar Checkbox de Movimentacao Desmarcado
    Clicar Botao Salvar 
    # Retornar massa de dados para status inicial dos testes
    Excluir Unidade de Internacao
    Sleep  5
