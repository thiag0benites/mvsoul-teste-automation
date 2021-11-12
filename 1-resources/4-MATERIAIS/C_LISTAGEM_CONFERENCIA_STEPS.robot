##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/C_LISTAGEM_CONFERENCIA_PAGE.robot

*** Keywords ***

Campo Previsao
    Click no Item                                           ${BtnCodigo}
    Clicar no Campo e Preencher Informacao                  ${CampoFiltro}      ${CampoFiltro}      %TESTE LUIZ HENRIQUE
    Click no Item                                           ${BtnFiltrar} 
    Click no Item                                           ${BtOk}
    Click no Item                                           ${BtnConsultar}
   
Selecionar a Previsao   
    Click no Item                                           ${BtnCheckBoxCt34421}
    Click no Item                                           ${BtnConfirmar}
    Validar Pop-Pup de Alerta e Clicar                      ${Alerta}           ${BtnAlerta}
    Sleep   3

