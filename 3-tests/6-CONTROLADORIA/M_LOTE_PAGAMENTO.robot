#################################################################################################################################################################
# Autor: Flavio Silva
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_LOTE_PAGAMENTO_STEPS "3-tests\6 - CONTROLADORIA\M_LOTE_PAGAMENTO.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_LOTE_PAGAMENTO_STEPS "3-tests\6 - CONTROLADORIA\M_LOTE_PAGAMENTO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_LOTE_PAGAMENTO_STEPS "3-tests\6 - CONTROLADORIA\M_LOTE_PAGAMENTO.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_LOTE_PAGAMENTO_STEPS "3-tests\6 - CONTROLADORIA\M_LOTE_PAGAMENTO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes

Resource            ../../1-resources/6-CONTROLADORIA/M_LOTE_PAGAMENTO_STEPS.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao


*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}          fat_consultas_conta_paciente
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***

SCR6CMLOTEPAGAMENTO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR6CMLOTEPAGAMENTO-001:Fluxo Principal" -d ./5-results/SCR6CMLOTEPAGAMENTO-001 "3-tests/6-CONTROLADORIA/M_LOTE_PAGAMENTO.robot"
# robot -v browser:firefox -t "SCR6CMLOTEPAGAMENTO-001:Fluxo Principal" -d ./5-results/SCR6CMLOTEPAGAMENTO-001 "3-tests/6-CONTROLADORIA/M_LOTE_PAGAMENTO.robot"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Pagar>Pagamentos>Lotes de Pagamentos"@nprint @las
    Atribuir no campo descricao uma nomenclatura 
    Aperte em Salvar
    Acione a tecla pesquisar contas a pagar
    Pesquisar por data de vencimento/previsao de pagamento
    Clicar em associar
    Aprovar o lote alterando do nivel 0 para o proximo nivel
