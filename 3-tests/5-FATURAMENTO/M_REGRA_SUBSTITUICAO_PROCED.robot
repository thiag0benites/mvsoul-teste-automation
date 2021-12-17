#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Regra de Substituição de Procedimento de Cobrança
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_REGRA_SUBSTITUICAO_PROCED.robot"
# firefox: robot -v browser:firefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_REGRA_SUBSTITUICAO_PROCED.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_REGRA_SUBSTITUICAO_PROCED.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/5-FATURAMENTO "3-tests\5-FATURAMENTO\M_REGRA_SUBSTITUICAO_PROCED.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/5-FATURAMENTO/M_REGRA_SUBSTITUICAO_PROCED_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_regra_substituicao_proced
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR5FMREGRASUBSTITUICAOPROCED-001:Fluxo Principal
# robot -v browser:chrome -t "SCR5FMREGRASUBSTITUICAOPROCED-001:Fluxo Principal" -d ./5-results/SCR5FMREGRASUBSTITUICAOPROCED-001 "3-tests/5-FATURAMENTO/M_REGRA_SUBSTITUICAO_PROCED.robot"
# robot -v browser:firefox -t "SCR5FMREGRASUBSTITUICAOPROCED-001:Fluxo Principal" -d ./5-results/SCR5FMREGRASUBSTITUICAOPROCED-001 "3-tests/5-FATURAMENTO/M_REGRA_SUBSTITUICAO_PROCED.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR5FMREGRASUBSTITUICAOPROCED-001"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Regras de Substituição de Procedimentos"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Listar Regras de Substituicao de Procedimento |${dados}[ValidProcedimento]|
    Adicionar Regra de Substituicao de Procedimento |${dados}[Empresa]| |${dados}[Procedimento]| |${dados}[ProcedimentoSubst]| |${dados}[DtVigencia]| |${dados}[Convenio]| |${dados}[Plano]| |${dados}[Regra]| |${dados}[Setor]| |${dados}[FtQuantidade]| |${dados}[FtValor]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
    # Retornar massa de dados para status inicial
    Excluir Regra de Substituicao
    Clicar Botao Salvar |${dados}[MensagemSucesso]|

