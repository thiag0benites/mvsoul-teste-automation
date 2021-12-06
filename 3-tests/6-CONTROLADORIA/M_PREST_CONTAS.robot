#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/M_PREST_CONTAS "3-tests\6-CONTROLADORIA\M_PREST_CONTAS.robot"
# chrome:         robot -v browser:firefox -d ./5-results/M_PREST_CONTAS "3-tests\6-CONTROLADORIA\M_PREST_CONTAS.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/M_PREST_CONTAS "3-tests\6-CONTROLADORIA\M_PREST_CONTAS.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/M_PREST_CONTAS "3-tests\6-CONTROLADORIA\M_PREST_CONTAS.robot"
#################################################################################################################################################################
Pré-condições
Usuário com permissão e acesso a tela
Configurações
Controladoria > Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos) > Configurações > Financeiro
Tabelas
Controladoria >Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos) >Tabelas > Tipos de Documento
Serviços de Apoio >Global >Globais > Centros de Custos Controladoria > Contabilidade >Tabelas > Históricos
Controladoria > Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos) > Tabelas > Contas Correntes
Apoio à TI > Gestão de Usuários > Configurações de Acesso > Acessos Controladoria >Cadastro de Caixa X Usuários.
Controladoria / Contabilidade / Tabelas / Plano Contábil
Movimentações
Controladoria > Controle Financeiro (Cta a Pagar, Cta a Receber, Bancos) >Controle Financeiro > Contas a Pagar >Pagamentos > Pagamentos
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/6-CONTROLADORIA/M_PREST_CONTAS_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown    Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
# ${suite}        m_prest_contas
# # Recebe dados do gerenciador
# ${dados}

*** Test Case ***
SMF-7317 : Prestar contas de <Fornecedor> com Despesas
# robot -v browser:chrome -t "SMF-7317 : Prestar contas de <Fornecedor> com Despesas" -d ./5-results/SMF-7317 "3-tests/6-CONTROLADORIA/M_PREST_CONTAS.robot"
# robot -v browser:firefox -t "SMF-7317 : Prestar contas de <Fornecedor> com Despesas" -d ./5-results/SMF-7317 "3-tests/6-CONTROLADORIA/M_PREST_CONTAS.robot"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Pagar>Prestação de Contas>Fornecedor"@nprint @las
    Informar o codigo|89959| do adiantamento que estara sendo prestado contas
    Inserir Data Prestacao |03/Dez/2021|    ### Preencher dd/Mmm/aaaa ###
    Informar ou selecionar no campo <setor> |AMBULATORIO HOBRA|
    Preencher Campo "Valor Prestacao|10000|", "Conta Contabil|ACORDO|", "Historico Padrao|HONORARIOS MEDICOS|"
    Efetuar Prestacao
    Validar Despesa

SMF-7318 : Prestar contas de <Fornecedor> com recebimento de dinheiro
# robot -v browser:chrome -t "SMF-7318 : Prestar contas de <Fornecedor> com recebimento de dinheiro" -d ./5-results/SMF-7318 "3-tests/6-CONTROLADORIA/M_PREST_CONTAS.robot"
# robot -v browser:firefox -t "SMF-7318 : Prestar contas de <Fornecedor> com recebimento de dinheiro" -d ./5-results/SMF-7318 "3-tests/6-CONTROLADORIA/M_PREST_CONTAS.robot"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Pagar>Prestação de Contas>Fornecedor"@nprint @las
    Informar o codigo|89961| do adiantamento que estara sendo prestado contas
    Inserir Data Prestacao |06/Dez/2021|    ### Preencher dd/Mmm/aaaa ### // ### Obs: Sempre ter a data do dia ###
    Informar ou selecionar no campo <setor> |AMBULATORIO HOBRA|
    Preencher Campo "Valor Prestacao|10000|", "Conta Contabil|ACORDO|", "Historico Padrao|BAIXA ADIANTAMENTO|"
    Efetuar Prestacao
    Preenche informacoes Para recebimento de Dinheiro "Tipo Documento|DIVERSOS|", "Numero Documento|1001|", "Conta Custo|MATERIAIS E MEDICAMENTOS|", "Caixa|TESTE|"



SMF-7232 : Prestar contas de <Fornecedor> com Notas Fiscais
# robot -v browser:chrome -t "SMF-7232 : Prestar contas de <Fornecedor> com Notas Fiscais" -d ./5-results/SMF-7232 "3-tests/6-CONTROLADORIA/M_PREST_CONTAS.robot"
# robot -v browser:firefox -t "SMF-7232 : Prestar contas de <Fornecedor> com Notas Fiscais" -d ./5-results/SMF-7232 "3-tests/6-CONTROLADORIA/M_PREST_CONTAS.robot"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Pagar>Prestação de Contas>Fornecedor"@nprint @las






