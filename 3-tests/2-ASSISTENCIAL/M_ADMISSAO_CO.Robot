#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/O_TRANSF_CC_RPA_STEPS "3-tests\2 - ASSISTENCIAL\O_TRANSF_CC_RPA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../1-resources//2-ASSISTENCIAL/M_ADMISSAO_CO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          fat_consultas_conta_paciente
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
SCR2AMADMI-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMADMI-001:Fluxo Principal" -d ./5-results/SCR2AMADMI-001 "3-tests\2-ASSISTENCIAL/M_ADMISSAO_CO.Robot"
# robot -v browser:firefox -t "SCR2AMADMI-001:Fluxo Principal" -d ./5-results/SCR2AMADMI-001 "3-tests\ 2-ASSISTENCIAL/M_ADMISSAO_CO.Robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMADMI-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Ficha Obstétrica"@nprint @las
    Acessar Atendimento |${dados}[AcessarAtendimento]|
    Inserir Data do Parto |17/Nov/2021|
    Acessar Tipo Parto |${dados}[TipoParto]|
    Acessar Motivo do Parto |${dados}[MotivoParto]|
    Preenche Dados Quantidade Filhos |${dados}[QtdFilhos]| e Semanas |${dados}[QtdSemanas]|
    Acessar Tipo de Anestesia |${dados}[TipoAnestesia]|
    Acessar Botao Obstestricia
    Acesso Tela Recem Nascido
    Preenche Apgar, Perimetro e Medidas
    Seleciona Pediatra Responsavel e Leito


