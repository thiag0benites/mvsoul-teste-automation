##################################################################################################################################
# Autor: Marcos Costa
# Decrição: Relatório Pagamentos Realizados
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../2-pages/6-CONTROLADORIA/R_CON_PAG_PAGE.robot

*** Keywords ***
Informar no Relatorio <Empresa> |${VlEmpresa}| <Fornec> |${VlFornec}| <ConCont> |${VlConCont}| <ConCor> |${VlConCor}| <Processo> |${VlProcesso}| <TipoDoc> |${VlTipoDoc}| <PerInicial> |${VlPerInicial}| <PerFinal> |${VlPerFinal}| <PeriodoDe> |${VlPeriDe}|
    # Validar Acesso a Tela |Controle de Conferencia por Paciente|
    # Empresa
    Click no Item    ${CpEmpresaA}
    Click no Item    ${CpEmpresaB}
    Clicar no Campo e Preencher Informacao    ${CpEmpresaC}    ${CpEmpresaC}    ${VlEmpresa}
    Click no Item    ${CpEmpresaD}
    Click no Item    ${CpEmpresaE}
# Fornecedor
    Click no Item    ${CpForneceA}
    Click no Item    ${CpForneceB}
    Clicar no Campo e Preencher Informacao    ${CpForneceC}    ${CpForneceC}    ${VlFornec}
    Click no Item    ${CpForneceD}
    Click no Item    ${CpForneceE}
# Conta Contabil
    # Click no Item    ${CpContConA}
    # Click no Item    ${CpContConB}
    Clicar no Campo e Preencher Informacao    ${CpContConA}    ${CpContConA}    ${VlConCont}
    # Click no Item    ${CpContConD}
    # Click no Item    ${CpContConE}
# Conta Corrente
    Click no Item    ${CpContCorA}
    Click no Item    ${CpContCorB}
    Clicar no Campo e Preencher Informacao    ${CpContCorC}    ${CpContCorC}    ${VlConCor}
    Click no Item    ${CpContCorD}
    Click no Item    ${CpContCorE}
# Processo
    Click no Item    ${CpProcessA}
    Click no Item    ${CpProcessB}
    Clicar no Campo e Preencher Informacao    ${CpProcessC}    ${CpProcessC}    ${VlProcesso}
    Click no Item    ${CpProcessD}
    Click no Item    ${CpProcessE}
# Tipo de Documento
    # Click no Item    ${CpTipoDocA}
    # Click no Item    ${CpTipoDocB}
    Clicar no Campo e Preencher Informacao    ${CpTipoDocA}    ${CpTipoDocA}    ${VlTipoDoc}
    # Click no Item    ${CpTipoDocD}
    # Click no Item    ${CpTipoDocE}
# Periodo Inicial
    Clicar no Campo e Preencher Informacao    ${CpPerInicial}    ${CpPerInicial}    ${VlPerInicial}
# Periodo Final
    Clicar no Campo e Preencher Informacao    ${CpPerFinal}    ${CpPerFinal}    ${VlPerFinal}
# Periodo De:
    Clicar no Campo e Preencher Informacao    ${CpTpPeriodo}    ${CpTpPeriodo}    ${VlPeriDe}
# Imprimir
    Click no Item    ${BtImprimir}

Captura da ulr do pdf gerado <suite> |${suite}| <id> |${id}|
    Should Not Be Empty   ${BtImprimir}
    Switch Window
    ${URLImpres}  Get Location
    Altera massa de dados da "${suite}", linha "${id}", coluna "ReImpres", valor "${URLImpres}"
    Sleep    3
