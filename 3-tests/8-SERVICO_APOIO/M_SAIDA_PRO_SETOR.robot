#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Teste da tela Saída de Documentos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SAIDA_PRO_SETOR.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SAIDA_PRO_SETOR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SAIDA_PRO_SETOR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\8-SERVICO_APOIO\M_SAIDA_PRO_SETOR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/8-SERVICO_APOIO/M_SAIDA_PRO_SETOR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
#Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_saida_pro_setor
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR8SMSAIDAPROSETOR-001:Fluxo Principal
# robot -v browser:chrome -t "SCR8SMSAIDAPROSETOR-001:Fluxo Principal" -d ./5-results/SCR8SMSAIDAPROSETOR-001 "3-tests/8-SERVICO_APOIO/M_SAIDA_PRO_SETOR.robot"
# robot -v browser:firefox -t "SCR8SMSAIDAPROSETOR-001:Fluxo Principal" -d ./5-results/SCR8SMSAIDAPROSETOR-001 "3-tests/8-SERVICO_APOIO/M_SAIDA_PRO_SETOR.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR8SMSAIDAPROSETOR-001"
    Acessa a Tela Pela Busca |M_SAIDA_PRO_SETOR||Setor / Portador| @las
    Preencha os dados <Menu> |${dados}[Menu]|, <Portador> |${dados}[Portador]|, <Transportador> |${dados}[Transportador]|, <Solicitante> |${dados}[Solicitante]|, <Motivo> |${dados}[Motivo]| |${dados}[Atendimento]| |${dados}[MsgVerificada]|