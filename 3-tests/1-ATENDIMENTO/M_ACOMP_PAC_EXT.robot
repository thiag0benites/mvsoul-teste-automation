#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Teste da tela Triagem de Paciente
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ACOMP_PAC_EXT.robot"
# firefox:        robot -v browser:firefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ACOMP_PAC_EXT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ACOMP_PAC_EXT.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/1-ATENDIMENTO "3-tests\1-ATENDIMENTO\M_ACOMP_PAC_EXT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/1-ATENDIMENTO/M_ACOMP_PAC_EXT_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_acomp_pac_ext
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR1AMACOMPPACEXT-001:Fluxo Principal  
# robot -v browser:chrome -t "SCR1AMACOMPPACEXT-001:Fluxo Principal" -d ./5-results/SCR1AMACOMPPACEXT-001 "3-tests/1-ATENDIMENTO/M_ACOMP_PAC_EXT.robot"
# robot -v browser:firefox -t "SCR1AMACOMPPACEXT-001:Fluxo Principal" -d ./5-results/SCR1AMACOMPPACEXT-001 "3-tests/1-ATENDIMENTO/M_ACOMP_PAC_EXT.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR1AMACOMPPACEXT-001"
    Acessar a tela "Atendimento>Internação>Atendimento>Registros>Acompanhamento de Pacientes Externos"@print @las
    Acesso Ao Prontuario "Nome|${dados}[Nome]|"
    Acesso Detalhamento Do Contato "Resp Contato|${dados}[RespContato]|", "Informante|${dados}[Informante]|", "Campo Inf Pertinente|${dados}[InfPertinente]|"
    Registro de Obito De Pac Externos "Data Obito|${dados}[DataObito]|", "Hora Obito|${dados}[HoraObito]|", "Declaracao Obito|${dados}[DeclObito]|", "Local|${dados}[Local]|", "Validador|${dados}[Validador]|"