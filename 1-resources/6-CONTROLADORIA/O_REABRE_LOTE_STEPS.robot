##################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource                  ../../2-pages/6-CONTROLADORIA/O_IMP_FINANC_PROCESSO_pages.robot
Resource                  ../../1-resources/ContextoSteps.robot
Resource                  ../../Config.robot
Resource                  ../../1-resources/auxiliar/Genericos.robot
Resource                  ../../1-resources/bd/BancoDados.robot

*** Keywords ***

Acessa e Preenche Campo Codigo |${Item}|
    Click no Item                             ${CampoCodigo}
    Clicar no Campo e Preencher Informacao    ${BtnListaCampoCodigo}            ${CampoPesquisa}        ${Item}
    
Executar Pesquisa
    Click no Item                              ${BtnExecutarConsulta} 