##################################################################################################################################
# Autor: Marcio Nascimento
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                  ../../2-pages/4-MATERIAIS/M_DEVPAC_Pages.robot
Resource                  ../../1-resources/ContextoSteps.robot
Resource                  ../../Config.robot
Resource                  ../../1-resources/auxiliar/Genericos.robot
Resource                  ../../1-resources/bd/BancoDados.robot

*** Keywords ***

Selecionar campo estoque e preencher com "${Estoque}"
    Click no Item                        ${ButtonEstoque}                                          
    Preencher campo                      ${EstoqueInput}                ${Estoque} 
    Click no Item                        ${BotaoFiltrar}
    Click no Item                        ${SelectFarmacia}

Selecionar campo consulta de atendimento e filtrar pelo nome "${NomePaciente}"
    Click no Item                        ${ClickLupa}
    Click no Item                        ${CampoNome} 
    Preencher campo                      ${InputPaciente}               ${NomePaciente}
    Click no Item                        ${BotaoExecutar} 
    Click no Item                        ${BotaoConfirmar} 

Selecionar campo motivo e filtrar pelo nome
    Click no Item                        ${BotaoMotivo}
    Click no Item                        ${SelectMotivo}
    Click no Item                        ${BotaoOk} 

Preencher campo de Observacoes com "${Obs}"
    Preencher campo                   ${CampoObsInput}                ${Obs}

Preencher campo com Codido de Barra "${COD}"
    Click no Item                         ${CampoCod}
    Clicar Botao se estiver Visivel       ${CampoSim}
    Preencher campo                       ${CampoCodInput}                ${COD}
    Click no Item                         ${BtnSeguinte}

Preencher campo produto "${Produto}" e Qntde Recebida "${Qntde}"
    Click no Item                         ${CodProduto}
    Preencher campo                       ${CampoProduto}                 ${Produto}
    Click no Item                         ${BtnSeguinte}
    Preencher campo                       ${CampoQntdeInput}              ${Qntde}

Preencher campos da Linha2 "${Produto_Linha2}" e Lote "${Lote_DevProd}" e Unidade "${Unidade}" e Qntde Recebida "${Qntde_Recebida2}" 
    Click no Item                         ${BtnSeguinte}
    Click no Item                         ${BtnProdutoL2}
    Preencher campo                       ${CampoProdutoL2}                 ${Produto_Linha2}
    # Click no Item                         ${BtnOK}
    # Click no Item                         ${BtnSeguinte}




