#################################################################################################################################################################
# Autor: Denner Ricardo
# Decrição:       Importar para o sistema de Patrimônio as notas fiscais de compra de bens patrimoniais registradas no Almoxarifado
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -t "SCR4MM_RECEBE_NOTA-001:Importar as Notas Fiscais de compras de bens patrimoniais" -d ./5-results/SCR4MM_RECEBE_NOTA-001 "3-tests/4-MATERIAIS/M_RECEBE_NOTA_.robot"
# firefox: robot -v browser:firefox -t "SCR4MM_RECEBE_NOTA-001:Importar as Notas Fiscais de compras de bens patrimoniais" -d ./5-results/SCR4MM_RECEBE_NOTA-001 "3-tests/4-MATERIAIS/M_CONSULTA_PACIENTE.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/SCR4M-002 "3-tests/4-MATERIAIS/M_NOTA_FISCAL_CONV.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR4M-002 "3-tests/4-MATERIAIS/M_NOTA_FISCAL_CONV.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/4-MATERIAIS/M_RECEBE_NOTA_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_RECEBE_NOTA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MM_RECEBE_NOTA-001:Fluxo Principal
# robot -v browser:chrome -t "SCR4MM_RECEBE_NOTA-001:Importar as Notas Fiscais de compras de bens patrimoniais" -d ./5-results/SCR4MM_RECEBE_NOTA-001 "3-tests/4-MATERIAIS/M_RECEBE_NOTA.robot"
# robot -v browser:firefox -t "SCR4MM_RECEBE_NOTA-001:Importar as Notas Fiscais de compras de bens patrimoniais" -d ./5-results/SCR4MM_RECEBE_NOTA-001 "3-tests/4-MATERIAIS/M_RECEBE_NOTA.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MM_RECEBE_NOTA-001"
    Acessar a tela "Materiais e Logística>Patrimônio>Gerenciamento>Recebimento de Produtos para Tombamento"@nprint @las
    Selecionar a linha da Nota Fiscal que sera tombada |${dados}[codNotaFiscal]|
    Clicar no botao [Realizar Tombamento]
    Preencher Dados do bem |${dados}[descricaoPlaqueta]|,|${dados}[numeroSerie]|,|${dados}[modelo]|,|${dados}[tipoAquisicao]|,|${dados}[classificacao]|,|${dados}[subClassificacao]|,|${dados}[centroCusto]|,|${dados}[localidade]|,|${dados}[anos]|,|${dados}[dias]|,|${dados}[vencimentoGarantia]|@nprint
    Clicar no botao [Salvar]
    Valida Mensagem    ${mensagemNotification}    Cadastro de Bens realizado com sucesso!
