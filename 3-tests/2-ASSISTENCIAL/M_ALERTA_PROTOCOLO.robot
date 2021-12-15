#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Alteração de Atendimento
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ALERTA_PROTOCOLO.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ALERTA_PROTOCOLO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ALERTA_PROTOCOLO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_ALERTA_PROTOCOLO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_ALERTA_PROTOCOLO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_alerta_protocolo
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMALERTAPROTOCOLO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMALERTAPROTOCOLO-001:Fluxo Principal" -d ./5-results/SCR2AMALERTAPROTOCOLO-001 "3-tests/2-ASSISTENCIAL/M_ALERTA_PROTOCOLO.robot"
# robot -v browser:firefox -t "SCR2AMALERTAPROTOCOLO-001:Fluxo Principal" -d ./5-results/SCR2AMALERTAPROTOCOLO-001 "3-tests/2-ASSISTENCIAL/M_ALERTA_PROTOCOLO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMALERTAPROTOCOLO-001"
    Acessa a Tela Pela Busca |M_ALERTA_PROTOCOLO||Alertas de Protocolos| @las
    #Acessar a tela "Clínica e Assistencial>Gerenciamento de Unidades>Configuração>Tabelas>PEP>Alertas de Protocolos"@nprint @las
    Preencher Dados Protocolo |${dados}[Descricao]| |${dados}[MensagemAlerta]| |${dados}[EtapaProtocolo]| |${dados}[Ordem]|
    Preencher Dados Alerta |${dados}[Sigla]| |${dados}[Criticidade]| |${dados}[CriterioEvento]| |${dados}[TpEntrada]| |${dados}[Documento]|
    Salvar Protocolo
    # Retornar massa de dados para status inicial do teste
    Alterar Dados Cadastrados |${dados}[DescricaoAltera]| |${dados}[SiglaAltera]|
    Sleep  5
    



