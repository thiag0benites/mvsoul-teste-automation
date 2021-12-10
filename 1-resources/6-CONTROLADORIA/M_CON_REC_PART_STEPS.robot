##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/M_CON_REC_PART_PAGE.robot

*** Keywords ***

Campo Previsao |${Item}|
    Click no Item                                           ${BtnCodigo}
    Clicar no Campo e Preencher Informacao                  ${CampoFiltro}      ${CampoFiltro}     ${Item}
    Click no Item                                           ${BtnFiltrar} 
    Click no Item                                           ${BtOk}
    Click no Item                                           ${BtnConsultar}
   
Selecionar a Previsao                           
    Click no Item                                           ${BtnCheckBox}
    Click no Item                                           ${BtnConfirmar}
    Validar Pop-Pup de Alerta e Clicar                      ${Alerta}           ${BtnAlerta}