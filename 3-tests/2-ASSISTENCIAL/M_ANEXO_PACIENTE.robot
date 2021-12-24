#################################################################################################################################################################
# Autor: Alan Patriota
# Decrição: Teste da tela Anexo de Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ANEXO_PACIENTE.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ANEXO_PACIENTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ANEXO_PACIENTErobot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ANEXO_PACIENTE.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/M_ANEXO_PACIENTE_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_ANEXO_PACIENTE
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMANEXOPACIENTE-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMANEXOPACIENTE-001:Fluxo Principal" -d ./5-results/SCR2AMANEXOPACIENTE-001 "3-tests/2-ASSISTENCIAL/M_ANEXO_PACIENTE.robot"
# robot -v browser:firefox -t "SCR2AMANEXOPACIENTE-001:Fluxo Principal" -d ./5-results/SCR2AMANEXOPACIENTE-001 "3-tests/2-ASSISTENCIAL/M_ANEXO_PACIENTE.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMANEXOPACIENTE-001"
    #Acessar a tela "Clínica e Assistencial>Gerenciamento de Unidades>Secretaria>Cadastro de Documento Externo(Anexo)"@nprint @las
    Acessa a Tela Pela Busca |M_ANEXO_PACIENTE||Cadastro de Documento Externo(Anexo)| @las
    Acessar Paciente e Matricula |${dados}[Paciente]| |${dados}[Matricula]|
    Consultar, Validar e Exibir PDF |${dados}[Objeto]|
    Registrar Exibicao PDF
