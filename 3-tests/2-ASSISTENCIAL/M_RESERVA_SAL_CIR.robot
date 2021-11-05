#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Reserva de Sala Cirúrgica
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_RESERVA_SAL_CIR.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_RESERVA_SALA_CIR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_RESERVA_SAL_CIR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_RESERVA_SAL_CIR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_RESERVA_SAL_CIR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_reserva_sal_cir
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMRESERVASALCIR-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMRESERVASALCIR-001:Fluxo Principal" -d ./5-results/SCR2AMRESERVASALCIR-001 "3-tests/2-ASSISTENCIAL/M_RESERVA_SAL_CIR.robot"
# robot -v browser:firefox -t "SCR2AMRESERVASALCIR-001:Fluxo Principal" -d ./5-results/SCR2AMRESERVASALCIR-001 "3-tests/2-ASSISTENCIAL/M_RESERVA_SAL_CIR.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMRESERVASALCIR-001"
    Acessar a tela "Atendimento>Centro Cirúrgico e Obstétrico>Centro Cirúrgico>Reserva de Salas"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Dados Da Reserva
    Clicar Botao Salvar 
    # Retornar massa de dados para status inicial
    Excluir Reserva Realizada   
