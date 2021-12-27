##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/M_PRODUCAO_MGES_PAGE.robot

*** Keywords ***

Informacoes Gerais de Entrada de Produtos
    Wait Until Element Is Visible                            ${CampoEstoque}                       180
    Preencher campo                                          ${CampoEstoque}                       66
    Send Keys                                                enter
    Click no Item                                            ${DivProduto}
    Preencher campo                                          ${CampoEmEdicao}                      17075
    Send Keys                                                enter
    Preencher campo                                          ${CampoEmEdicao}                      AMPOLA
    Send Keys                                                enter
    
Aba Itens de Composicao    
   # Click no Item                                            ${BtnItensDeComposicao}
    Click no Item                                            ${DivCodProduto}
    Preencher campo                                          ${CampoEmEdicao}                      1
    Send Keys                                                enter
    Preencher campo                                          ${CampoEmEdicao}                      FA C/250MG
    Send Keys                                                enter
    Preencher campo                                          ${CampoQuantidade}                    1
   # Send Keys                                                enter

Aba Lote principal
    Click no Item                                            ${BtnLotePrincipal}    
    Wait Until Element Is Visible                            ${DivSerie}                           20
    Click no Item                                            ${DivSerie}
    Preencher campo                                          ${CampoSerie}                         1478547
    Click no Item                                            ${DivDataValidade}
    Preencher campo com data e hora                          ${CampoDataValidade}                  %d/%m/%Y %H:%M    24:00:00
    Click no Item                                            ${BtnConcluir}

Validacao de Mensagem
    Valida Mensagem                                          ${Alerta}                             Atenção: Depois que for salvo não vai ser possivel realizar alteração. Deseja Gravar ?
    Click no Item                                            ${BtnSim}
    Valida Mensagem                                          ${Alerta}                             Movimentação Salva com Sucesso!
    Click no Item                                            ${BtnOK}





