##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de  Cadastro de Ordem de Compras
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_ORDCOM_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Estoque, Fornecedor, e PeriodoEntrega |${cdEstoque}| |${cdFornecedor}| |${dtEntregaIni}| |${dtEntregaFin}|
    Preencher Campo                     ${CampoEstoque}                     ${CdEstoque}
    Preencher Campo                     ${CampoFornecedor}                  ${CdFornecedor} 
    Preencher Campo                     ${CampoPerEntregaIni}               ${DtEntregaIni}
    Preencher Campo                     ${CampoPerEntregaFin}               ${DtEntregaFin}

Preencher Condicao e Marcar Servico |${cdCondic}|
    Preencher Campo                     ${CampoCondic}                      ${CdCondic}
    Click no Item                       ${CheckServico}

Informar Valor Total, Desconto e ICMS |${VLTotal}| |${VLDesconto}| |${VLICMS}|
    Preencher Campo                     ${CampoVLTotal}                     ${VLTotal}
    Preencher Campo                     ${CampoDesconto}                    ${VLDesconto}            
    Preencher Campo                     ${CampoICMS}                        ${VLICMS}   

Clicar em Servico e Preencher Servico e Valor |${cdServico}| |${VlTotaServico}|
    Click no Item                       ${BotaoServico}       
    Preencher Campo                     ${Servico}                          ${CdServico} 
    Click no Item                       ${VlServicoClick} 
    Sleep       2
    Preencher Campo                     ${VlServico}                        ${VlTotaServico}

Salvar Registro |${MsgSalvo}|
    Click Elemento por titulo           Salvar
    Valida Mensagem                     ${RegistroSalvo}                    ${MsgSalvo}
    Click no Item                       ${LimparSim}
    Wait Until Element Is Not Visible   ${ConfereEstoque}       20

