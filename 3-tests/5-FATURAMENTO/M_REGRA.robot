#################################################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: Testes da tela M_REGRA
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/M_REGRA "3-tests/5-FATURAMENTO/M_REGRA.robot"
# firefox: robot -v browser:firefox -d ./5-results/M_REGRA "3-tests/5-FATURAMENTO/M_REGRA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/M_REGRA "3-tests/5-FATURAMENTO/M_REGRA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/M_REGRA "3-tests/5-FATURAMENTO/M_REGRA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource        ../../1-resources/5-FATURAMENTO/M_REGRA_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            m_regra
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-1971:Fluxo Principal
# robot -v browser:chrome -t "SMF-1971:Fluxo Principal" -d ./5-results/SMF-1971 "3-tests/5-FATURAMENTO/M_REGRA.robot"
# robot -v browser:firefox -t "SMF-1971:Fluxo Principal" -d ./5-results/SMF-1971 "3-tests/5-FATURAMENTO/M_REGRA.robot"
    ${dados}   Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-1971"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Regras"@nprint @las
    Preencher os campos Descricao|${dados}[descricao]|, Cir Mesma Via|${dados}[cirMesmaVia]|, Cir Via Diferente|${dados}[cirViaDiferente]|, Limite OPME aviso|${dados}[limiteOPME]|
    Selecionar o checkBox [I]
    Clicar no botao [Salvar]
    Valida Mensagem     ${mensagemPop}     ${dados}[msgEsperada]
    Captura codigo |${suite}|${dados}[id]|
    