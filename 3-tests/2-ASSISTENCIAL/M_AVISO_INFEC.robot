#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Pacientes Internados e Susceptíveis a Processos Infecciosos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_AVISO_INFEC.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_AVISO_INFEC.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_AVISO_INFEC.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_AVISO_INFEC.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_AVISO_INFEC_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_aviso_infec
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMAVISOINFEC-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMAVISOINFEC-001:Fluxo Principal" -d ./5-results/SCR2AMAVISOINFEC-001 "3-tests/2-ASSISTENCIAL/M_AVISO_INFEC.robot"
# robot -v browser:firefox -t "SCR2AMAVISOINFEC-001:Fluxo Principal" -d ./5-results/SCR2AMAVISOINFEC-001 "3-tests/2-ASSISTENCIAL/M_AVISO_INFEC.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMAVISOINFEC-001"
    Acessa a Tela Pela Busca |M_AVISO_INFEC||Pacientes Suspeitos à Infecção| @las
    #Acessar a tela "Clínica e Assistencial>Controle de Infecção Hospitalar>Atendimento>Pacientes Suspeitos à Infecção"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Filtros para Pesquisa |${dados}[Paciente]|
    Validar Resultados da Pesquisa |${dados}[Paciente]| |${dados}[Prestador]| |${dados}[CID]| |${dados}[Procedencia]|
    Validar Aba Culturas |${dados}[Exame]| |${dados}[Microrganismos]| |${dados}[AntimicrobianoCult]|
    Validar Aba Antimicrobianos |${dados}[Prescricao]| |${dados}[Antimicrobiano]| |${dados}[Frequencia]|
    Validar Aba Proc. Invasivos |${dados}[Horario]| |${dados}[Procedimento]| |${dados}[Topografia]|
    Validar Aba Cirurgias |${dados}[HrInicio]| |${dados}[HrFim]| |${dados}[ProcedimentoCir]| |${dados}[PrestadorCir]|



