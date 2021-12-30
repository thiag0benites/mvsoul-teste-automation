#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Prescrição Padrão
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PREPAD.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PREPAD.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PREPAD.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_PREPAD.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_PREPAD_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_prepad
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMPREPAD-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMPREPAD-001:Fluxo Principal" -d ./5-results/SCR2AMPREPAD-001 "3-tests/2-ASSISTENCIAL/M_PREPAD.robot"
# robot -v browser:firefox -t "SCR2AMPREPAD-001:Fluxo Principal" -d ./5-results/SCR2AMPREPAD-001 "3-tests/2-ASSISTENCIAL/M_PREPAD.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMPREPAD-001"
    Acessa a Tela Pela Busca |M_PREPAD||Prescrição Padrão| @las
    #Acessar a tela "Clínica e Assistencial>Gerenciamento de Unidades>Configuração>Tabelas>Prescrição Padrão"@nprint @las
    Cadastrar Prescricao Padrao |${dados}[Descricao]| |${dados}[Medico]| |${dados}[TpObjeto]|
    Preencher Dados do Item de Prescricao |${dados}[Esquema]| |${dados}[Item]| |${dados}[Quantidade]| |${dados}[Frequencia]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
    # Retornar massa de dados para status inicial
    Excluir Prescricao Padrao
    Clicar Botao Salvar |${dados}[MensagemSucesso]|


