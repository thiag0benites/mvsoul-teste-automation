#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Ajusta Valor do Custo Médio do Produto
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_AJUSTA_CUSTO_MEDIO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_AJUSTA_CUSTO_MEDIO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_AJUSTA_CUSTO_MEDIO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_AJUSTA_CUSTO_MEDIO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_AJUSTA_CUSTO_MEDIO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          m_ajusta_custo_medio
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMAJUSTACUSTOMEDIO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MMAJUSTACUSTOMEDIO-001:Fluxo Principal" -d ./5-results/SCR4MMAJUSTACUSTOMEDIO-001 "3-tests/4-MATERIAIS/M_AJUSTA_CUSTO_MEDIO.robot"
# robot -v browser:firefox -t "SCR4MMAJUSTACUSTOMEDIO-001:Fluxo Principal" -d ./5-results/SCR4MMAJUSTACUSTOMEDIO-001 "3-tests/4-MATERIAIS/M_AJUSTA_CUSTO_MEDIO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMAJUSTACUSTOMEDIO-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Cálculos>Ajuste do Custo Médio do Produto"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Estoque e Tipo de Ajuste |${dados}[Estoque]| |${dados}[TpAjuste]|
    Selecionar Produto |${dados}[CdProduto]| |${dados}[Justificativa]|
    Gerar Valor Custo Medio |${dados}[MsgConfirmaRefProduto]| |${dados}[NovoCustoMedio]| |${dados}[MsgValorGerado]| |${dados}[MsgSucesso]|
    # Retornar massa de dados para status inicial do teste
    Gerar Valor Custo Medio |${dados}[MsgConfirmaRefProduto]| |${dados}[NovoCustoMedioAltera]| |${dados}[MsgValorGerado]| |${dados}[MsgSucesso]|


