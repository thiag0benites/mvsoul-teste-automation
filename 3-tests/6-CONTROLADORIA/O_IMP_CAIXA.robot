#################################################################################################################################################################
# Autor: Denner Ricardo 
# Decrição: Importar as movimentações do caixa que foram gerados pelo sistema Caixa, tais como: recebimentos e pagamentos em dinheiro ou documentos (cheque, depósitos antecipados, notas- promissórias, dinheiro,TEF, duplicatas), aplicação direta de receitas e despesas e troca de status de documentos. 
#################################################################################################################################################################
# Execução Exemplo:
# chrome:   robot -v browser:chrome -t "SCR6CO_IMP_CAIXA-001:Caixa Importar movimentação" -d ./5-results/SCR6CO_IMP_CAIXA-001 "3-tests/6-CONTROLADORIA/O_IMP_CAIXA.robot"
# firefox:  robot -v browser:firefox -t "SCR6CO_IMP_CAIXA-001:Caixa Importar movimentação" -d ./5-results/SCR6CO_IMP_CAIXA-001 "3-tests/6-CONTROLADORIA/O_IMP_CAIXA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/SCR6CO_IMP_CAIXA-001 "3-tests/6-CONTROLADORIA/O_IMP_CAIXA.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/SCR6CO_IMP_CAIXA-001 "3-tests/6-CONTROLADORIA/O_IMP_CAIXA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource            ../../1-resources/6-CONTROLADORIA/O_IMP_CAIXA_STEPS.robot
Resource            ../../1-resources/auxiliar/Genericos.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão

### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
# Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            O_IMP_CAIXA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR6CO_IMP_CAIXA-001:Cadastrar Plano Contábil
# robot -v browser:chrome -t "SCR6CO_IMP_CAIXA-001:Cadastrar Plano Contábil" -d ./5-results/SCR6CO_IMP_CAIXA-001 "3-tests/6-CONTROLADORIA/O_IMP_CAIXA.robot"
# robot -v browser:firefox -t "SCR6CO_IMP_CAIXA-001:Cadastrar Plano Contábil" -d ./5-results/SCR6CO_IMP_CAIXA-001 "3-tests/6-CONTROLADORIA/O_IMP_CAIXA.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR6CO_IMP_CAIXA-001"
    Acessar "O_IMP_CAIXA"@nprint @las
    Preecher Periodo |${dados}[periodoInicial]|, |${dados}[periodoFinal]| e Liberar
    Valida Mensagem        ${mensagemLiberacaoCaixa}         Atenção: Liberação de Movimentações concluída com sucesso. Foi gerado o lote 5143 referente as movimentações do período de 08/11/2021 à 08/11/2021
    Clicar no Botao |OK|