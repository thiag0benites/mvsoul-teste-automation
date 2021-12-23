#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Objetos de Prontuário
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PAGU_OBJETO.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PAGU_OBJETO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PAGU_OBJETOrobot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PAGU_OBJETO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/M_PAGU_OBJETO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_PAGU_OBJETO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMPAGUOBJETO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMPAGUOBJETO-001:Fluxo Principal" -d ./5-results/SCR2AMPAGUOBJETO-001 "3-tests/2-ASSISTENCIAL/M_PAGU_OBJETO.robot"
# robot -v browser:firefox -t "SCR2AMPAGUOBJETO-001:Fluxo Principal" -d ./5-results/SCR2AMPAGUOBJETO-001 "3-tests/2-ASSISTENCIAL/M_PAGU_OBJETO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMPAGUOBJETO-001"
    #Acessar a tela "Clínica e Assistencial>Gerenciamento de Unidades>Configuração>Tabelas>Tipos de Objetos de Prontuário"@nprint @las
    Acessa a Tela Pela Busca |M_PAGU_OBJETO||Tipos de Objetos de Prontuário| @las
        
    Localizar Objeto Pai
    Abrir Edicao e Adicionar Campo
    Validar Edicao e Salvar |${dados}[Resultado]|
    Sair e Voltar pra Validar |${dados}[Resultado]|