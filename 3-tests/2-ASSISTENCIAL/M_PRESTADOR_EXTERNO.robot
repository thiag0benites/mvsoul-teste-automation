#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Prestador Externo
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PRESTADOR_EXTERNO.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PRESTADOR_EXTERNO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PRESTADOR_EXTERNO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PRESTADOR_EXTERNO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_PRESTADOR_EXTERNO_STEPS.robot

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
SCR2AMPRESTADOREXTERNO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMPRESTADOREXTERNO-001:Fluxo Principal" -d ./5-results/SCR2AMPRESTADOREXTERNO-001 "3-tests/2-ASSISTENCIAL/M_PRESTADOR_EXTERNO.robot"
# robot -v browser:firefox -t "SCR2AMPRESTADOREXTERNO-001:Fluxo Principal" -d ./5-results/SCR2AMPRESTADOREXTERNO-001 "3-tests/2-ASSISTENCIAL/M_PRESTADOR_EXTERNO.robot"
    #Acessar a tela "Diagnóstico e Terapia>Diagnóstico por Imagem>Tabelas>Prestador Externo"@nprint @las
    Acessa a Tela Pela Busca |M_PRESTADOR_EXTERNO||Prestador Externo| @las
    Validar Acesso a Tela |Prestador Externo|