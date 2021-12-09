#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Consulta de  Solicitações de Produtos ao Estoque
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_SOLSAI_PRO.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_SOLSAI_PRO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_SOLSAI_PRO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\C_SOLSAI_PRO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/4-MATERIAIS/C_SOLSAI_PRO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            c_solsai_pro
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MCSOLSAIPRO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MCSOLSAIPRO-001:Fluxo Principal" -d ./5-results/SCR4MCSOLSAIPRO-001 "3-tests/4-MATERIAIS/C_SOLSAI_PRO.robot"
# robot -v browser:firefox -t "SCR4MCSOLSAIPRO-001:Fluxo Principal" -d ./5-results/SCR4MCSOLSAIPRO-001 "3-tests/4-MATERIAIS/C_SOLSAI_PRO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MCSOLSAIPRO-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Consultas>Solicitações de Produtos ao Estoque"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Cancelar Consulta |${dados}[MsgConsultaCancelada]|
    Realizar Consulta de Solicitacoes por |PacienteSol| |${dados}[MsgBusca]| |${dados}[Estoque]| |${dados}[ProdutoPacSol]|
    Realizar Consulta de Solicitacoes por |SetorSol| |${dados}[MsgBusca]| |${dados}[Estoque]| |${dados}[ProdutoSetorSol]|
    Realizar Consulta de Solicitacoes por |Estoque| |${dados}[MsgBusca]| |${dados}[Estoque]| |${dados}[ProdutoEstoque]|
    Realizar Consulta de Solicitacoes por |Empresa| |${dados}[MsgBusca]| |${dados}[Estoque]| |${dados}[ProdutoEmpresa]|
    Realizar Consulta de Solicitacoes por |PacienteDev| |${dados}[MsgBusca]| |${dados}[Estoque]| |${dados}[ProdutoPacDev]|
    Realizar Consulta de Solicitacoes por |SetorDev| |${dados}[MsgBusca]| |${dados}[Estoque]| |${dados}[ProdutoSetorDev]|
    Imprimir Relatorio




