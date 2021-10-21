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
    # Preencher campo                   ${CampoObsInput}                ${Obs}
    Click no Item                     ${CampoSim} 


Preencher campo com Codido de Barra "${COD}"
    Preencher campo                   ${CampoCodInput}                "${COD}"  

