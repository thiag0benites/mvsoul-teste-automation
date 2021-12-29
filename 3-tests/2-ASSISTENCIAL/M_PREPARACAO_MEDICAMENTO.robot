#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Consulta de Itens Prescritos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PREPARACAO_MEDICAMENTO.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PREPARACAO_MEDICAMENTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PREPARACAO_MEDICAMENTOrobot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PREPARACAO_MEDICAMENTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_PREPARACAO_MEDICAMENTO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            M_PREPARACAO_MEDICAMENTO
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMPREPARACAOMEDICAMENTO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMPREPARACAOMEDICAMENTO-001:Fluxo Principal" -d ./5-results/SCR2AMPREPARACAOMEDICAMENTO-001 "3-tests/2-ASSISTENCIAL/M_PREPARACAO_MEDICAMENTO.robot"
# robot -v browser:firefox -t "SCR2AMPREPARACAOMEDICAMENTO-001:Fluxo Principal" -d ./5-results/SCR2AMPREPARACAOMEDICAMENTO-001 "3-tests/2-ASSISTENCIAL/M_PREPARACAO_MEDICAMENTO.robot"
    #${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMPREPARACAOMEDICAMENTO-001"
    #Acessar a tela "Clínica e Assistencial>Gerenciamento de Unidades>Enfermagem>Preparação de medicamentos>Preparação de medicamentos"@nprint @las
    Acessa a Tela Pela Busca |M_PREPARACAO_MEDICAMENTO||Preparação de medicamentos| @las

    Acessar e Preencher Informacoes
    

