#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Liberação e Interdição de Leitos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_INT_LEITOS.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_INT_LEITOS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_INT_LEITOS.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_INT_LEITOS.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_INT_LEITOS_STEPS.robot

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
SCR2AMINTLEITOS-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMINTLEITOS-001:Fluxo Principal" -d ./5-results/SCR2AMINTLEITOS-001 "3-tests/2-ASSISTENCIAL/M_INT_LEITOS.robot"
# robot -v browser:firefox -t "SCR2AMINTLEITOS-001:Fluxo Principal" -d ./5-results/SCR2AMINTLEITOS-001 "3-tests/2-ASSISTENCIAL/M_INT_LEITOS.robot"
    Acessar a tela "Atendimento>Internação>Atendimento>Liberação e Interdição de Leitos"@nprint @las
    Validar Acesso a Tela |Liberação e Interdição de Leitos|
    Consultar Leito
    Validar Informacaoes do Leito
    Alterar Campo Ocupacao |Reforma|
    Clicar Botao Salvar
    # Retornar massa de dados para status inicial do teste
    Tela em Modo de Busca
    Alterar Campo Ocupacao |Vago|
    Clicar Botao Salvar