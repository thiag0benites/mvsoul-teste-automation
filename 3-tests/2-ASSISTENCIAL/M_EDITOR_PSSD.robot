#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Consulta de Itens Prescritos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EDITOR_PSSD.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EDITOR_PSSD.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EDITOR_PSSDrobot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_EDITOR_PSSD.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_EDITOR_PSSD_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            M_EDITOR_PSSD
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMEDITORPSSD-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMEDITORPSSD-001:Fluxo Principal" -d ./5-results/SCR2AMEDITORPSSD-001 "3-tests/2-ASSISTENCIAL/M_EDITOR_PSSD.robot"
# robot -v browser:firefox -t "SCR2AMEDITORPSSD-001:Fluxo Principal" -d ./5-results/SCR2AMEDITORPSSD-001 "3-tests/2-ASSISTENCIAL/M_EDITOR_PSSD.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMEDITORPSSD-001"
    
    Acessa a Tela Pela Busca |M_EDITOR_PSSD||Layout do Exame de Cultura Personalizado| @las

    Acessar e Inserir Nova Informacao |${dados}[Botao]|
    Gravar e Validar |${dados}[MsgSalva]|

