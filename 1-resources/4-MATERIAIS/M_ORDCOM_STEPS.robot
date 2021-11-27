##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de  Cadastro de Ordem de Compras
##################################################################################################################################
*** Settings ***
#### Pages utilizadas na Suite de teste
Resource          ../../2-pages/4-MATERIAIS/M_ORDCOM_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Estoque , Fornecedor, e PeriodoEntrega |${cdEstoque}| |${cdFornecedor}| |${dtEntregaIni}| |${dtEntregaFin}|
    Preencher Campo                     ${CampoEstoque}                     ${cdEstoque}
    Preencher Campo                     ${CampoFornecedor}                  ${cdFornecedor} 
    Preencher Campo                     ${CampoPerEntregaIni}               ${dtEntregaIni}
    Preencher Campo                     ${CampoPerEntregaFin}               ${dtEntregaFin}

Preencher Condicao e Marcar Servico |${cdCondic}|
    Preencher Campo                     ${CampoCondic}                      ${cdCondic}
    Click no Item                       ${CheckServico}

Informar Valor Total , Desconto e ICMS |${VLTotal}| |${VLDesconto}| |${VLICMS}|
    Preencher Campo                     ${CampoVLTotal}                     ${VLTotal}
    Preencher Campo                     ${CampoDesconto}                    ${VLDesconto}            
    Preencher Campo                     ${CampoICMS}                        ${VLICMS}   

CLicar em Servico e Preencher Servico e Valor |${cdServico}| |${VlTotaServico}|
    Click no Item                       ${BotaoServico}       
    Preencher Campo                     ${Servico}                          ${cdServico} 
    Click no Item                       ${VlServicoClick} 
    Sleep       2
    Preencher Campo                     ${VlServico}                        ${VlTotaServico}

Salvar Registro
    Click Elemento por titulo           Salvar
    Valida Mensagem                     ${RegistroSalvo}                Registros gravados com sucesso
    Click no Item                       ${LimparSim}
    Wait Until Element Is Not Visible   ${ConfereEstoque}       20

