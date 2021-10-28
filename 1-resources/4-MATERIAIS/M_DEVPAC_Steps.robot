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
    Preencher campo                      ${CampoObsInput}                ${Obs}

Preencher campo com Codido de Barra "${COD}"
    Click no Item                         ${CampoCod}
    Clicar Botao se estiver Visivel       ${CampoSim}
    Preencher campo                       ${CampoCodInput}                ${COD}
    Click no Item                         ${BtnSeguinte}

Preencher campo Primeiro produto "${Produto}" e Qntde Recebida "${Qntde_Recebida}"
    Click no Item                         ${CodProduto}
    Preencher campo                       ${CampoProduto}                 ${Produto}
    Click no Item                         ${BtnSeguinte}
    Preencher campo                       ${CampoQntdeInput}              ${Qntde_Recebida}

Preencher campo Segundo produto "${Produto2}", Unidade "${Unidade}" e Qntde Recebida "${Qntde_Recebida}"
    Click no Item                         ${BtnSeguinte}
    Preencher campo                       ${InputProdutoCod}                   ${Produto2}    
    Click no Item                         ${BtnSeguinte}
    Preencher campo                       ${InputQntde2}                       ${Qntde_Recebida}
    Click no Item                         ${CampoBtnUnidade}
    Click no Item                         ${BtnUnidade}
    Click no Item                         ${SelectUnidade}
    Click no Item                         ${BotaoOk}
    Click no Item                         ${BtnSeguinte}

Preencher campo Terceiro produto "${Produto3}" e Qntde Recebida "${Qntde_Recebida}"
    Click no Item                         ${BtnSelecionarProduto}
    Preencher campo                       ${InputProduto}                      ${Produto3}    
    Click no Item                         ${BotaoFiltrar}
    Click no Item                         ${SelectProd3}
    Click no Item                         ${BotaoOk}
    Click no Item                         ${BtnSeguinte}
    Preencher campo                       ${InputQntde3}                       ${Qntde_Recebida}
    Click no Item                         ${BtnSeguinte}

Preencher campo Quarto produto "${Produto4}", Unidade e Qntde Recebida "${Qntde_Recebida}" 
    Preencher campo                       ${InputProdutoCod}                   ${Produto4}
    Click no Item                         ${BtnSeguinte}
    Preencher campo                       ${InputQntde4}                       ${Qntde_Recebida}
    Click no Item                         ${CampoBtnUnidade4}
    Click no Item                         ${BtnUnidade4}
    Click no Item                         ${SelectUnidade4}
    Click no Item                         ${BotaoOk}
    Click no Item                         ${BtnSeguinte}

Preencher campo Quinto produto "${Produto5}", Unidade e Qntde Recebida "${Qntde_Recebida}" 
    Preencher campo                       ${InputProdutoCod}                   ${Produto5}
    Click no Item                         ${BtnSeguinte}
    Preencher campo                       ${InputQntde5}                       ${Qntde_Recebida}
    Click no Item                         ${CampoBtnUnidade5}
    Click no Item                         ${BtnUnidade5}
    Click no Item                         ${SelectUnidade5}
    Click no Item                         ${BotaoOk}
    Click no Item                         ${BtnSeguinte}
    
Clicar em Salvar, negando o pop-pup e Imprimindo registro
    Click no Item                         ${Salvar}
    Clicar Botao se estiver Visivel       ${Nao}
    Click no Item                         ${Imprimir}
    Click no Item                         ${Confirmar}
    Close Window