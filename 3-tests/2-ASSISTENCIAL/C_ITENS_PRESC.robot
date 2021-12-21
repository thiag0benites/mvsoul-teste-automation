#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Consulta de Itens Prescritos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_ITENS_PRESC.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_ITENS_PRESC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_ITENS_PRESCrobot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\C_ITENS_PRESC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/C_ITENS_PRESC_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            C_ITENS_PRESC
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2ACITENSPRESC-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2ACITENSPRESC-001:Fluxo Principal" -d ./5-results/SCR2ACITENSPRESC-001 "3-tests/2-ASSISTENCIAL/C_ITENS_PRESC.robot"
# robot -v browser:firefox -t "SCR2ACITENSPRESC-001:Fluxo Principal" -d ./5-results/SCR2ACITENSPRESC-001 "3-tests/2-ASSISTENCIAL/C_ITENS_PRESC.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2ACITENSPRESC-001"
    Acessar a tela "Serviços de Apoio>Nutrição e Dietética>Consultas>Prescrições Médicas>Itens Prescritos"@nprint @las
    #Acessa a Tela Pela Busca |C_ITENS_PRESC||Gerenciamento de Exames| @las
    Validar Acesso a Tela |Consulta de Itens Prescritos|

    Consultar Prescricao |${dados}[Prescricao]|
    Validar Pesquisa |${dados}[Paciente]|
    Imprimir e Validar

