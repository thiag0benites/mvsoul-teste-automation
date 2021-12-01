#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
# chrome:         robot -v browser:firefox -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
# chrome:         robot -v browser:headlessfirefox -d ./5-results/C_REPASSE_CONTA "3-tests\6-CONTROLADORIA\C_REPASSE_CONTA.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource          ../../1-resources/6-CONTROLADORIA/M_CONPAG_RES_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
# Test Teardown     Encerra sessao

*** Variable ***
# # Suite registrada no gerenciador de dados
${suite}          m_conpag_res
# # Recebe dados do gerenciador
${dados}

*** Test Case ***
SMF-5428:Cadastrar titulos a pagar seguindo o Processo Contas a Pagar de Diversos
# robot -v browser:chrome -t "SMF-5428 : Cadastrar titulos a pagar seguindo o Processo Contas a Pagar de Diversos" -d ./5-results/SMF-5428 "3-tests/6-CONTROLADORIA/M_CONPAG_RES.robot"
# robot -v browser:firefox -t "SMF-5428 : Cadastrar titulos a pagar seguindo o Processo Contas a Pagar de Diversos" -d ./5-results/SMF-5428 "3-tests/6-CONTROLADORIA/M_CONPAG_RES.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5428"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Pagar>Lançamentos/Adiantamentos>Cadastro"@nprint @las
    Indicar no campo 'Processo'|${dados}[Processo]| o tipo "Contas a Pagar de Diversos"
    Preencher Campos Obrigatorios "Tipo Documento|${dados}[TipoDocumento]|" "Fornecedor|${dados}[Fornecedor]|" "Empresa|${dados}[Empresa]|" "Valor Bruto|${dados}[ValorBruto]|" "Numero Documento|${dados}[NumeroDoc]|"
    Preenche Informacoes Aba Compartilhamento "Setor|${dados}[Setor]|" "Campo Custo|${dados}[CampoCusto]|" "Valor Compartilhado|${dados}[ValorBruto]|"    ## Vl Compart usar Vl Bruto
    Preenche Informacoes Aba Impostos "Detalhamento|${dados}[Detalhamento]|" "Validar Alerta|${dados}[ValidAlerta]|"

SMF-5434:Cadastrar titulos a pagar aplicando Acrescimo
# robot -v browser:chrome -t "SMF-5434 : Cadastrar titulos a pagar aplicando Acrescimo" -d ./5-results/SMF-5434 "3-tests/6-CONTROLADORIA/M_CONPAG_RES.robot"
# robot -v browser:firefox -t "SMF-5434 : Cadastrar titulos a pagar aplicando Acrescimo" -d ./5-results/SMF-5434 "3-tests/6-CONTROLADORIA/M_CONPAG_RES.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5434"
    Acessar a tela "Controladoria>Controle Financeiro (Cta a Pagar/Cta a Receber/Bancos)>Controle Financeiro>Contas a Pagar>Lançamentos/Adiantamentos>Cadastro"@nprint @las
    Indicar no campo 'Processo'|${dados}[Processo]| o tipo "Contas a Pagar de Diversos"
    Preencher Campos Obrigatorios "Tipo Documento|${dados}[TipoDocumento]|" "Fornecedor|${dados}[Fornecedor]|" "Empresa|${dados}[Empresa]|" "Valor Bruto|${dados}[ValorBruto]|" "Numero Documento|${dados}[NumeroDoc]|"
    Preenche Acrescimo "Seleciona Acrescimo|${dados}[SelecAcrescimo]|" "Valor Acrescimo|${dados}[ValorAcresc]|" "Valid Acrescimo|${dados}[ValidAcresc]|" "Valid Valor Acresc|${dados}[AlertaSalvar]|"
    Preenche Informacoes Aba Compartilhamento "Setor|${dados}[Setor]|" "Campo Custo|${dados}[CampoCusto]|" "Valor Compartilhado|${dados}[ValorBruto]|"    ## Vl Compart usar Vl Bruto
    Preenche Informacoes Aba Impostos "Detalhamento|${dados}[Detalhamento]|" "Validar Alerta|${dados}[ValidAlerta]|"
