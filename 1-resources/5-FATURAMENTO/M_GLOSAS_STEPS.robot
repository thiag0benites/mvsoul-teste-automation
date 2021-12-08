##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/M_GLOSAS_PAGES.robot

*** Variables ***
                

*** Keywords ***

Descrição do Procedimento |${Convenio}|
    Clicar no Campo e Preencher Informacao         ${CampoConvenio}    ${CampoConvenio}    ${Convenio}
    Clicar no botão Executar
    
    Click no Item                                  ${DivProcedimento}
    
     
    
   

Buscar Linha |${MotivoAceite}||${MotivoGlosa}|
    ${RecebeLinha}            Get Element Attribute        ${BuscaLinha}                                                                                              data-row
    ${RecebeValorGlosado}     Get Element Attribute       //div[@data-member="VL_GLOSA"][@data-row="${RecebeLinha}"]                                                  title
    


    Click no Item                                  //div[@data-member="VL_GLOSA_PRE_ACEITA"][@data-row="${RecebeLinha}"]/..   
    Preencher campo                                //input[@class="editor-text mode-edit"][@row="${RecebeLinha}"]                                                     ${RecebeValorGlosado}
    Altera massa de dados da "m_glosas", linha "1", coluna "ValorPreAceito", valor "${RecebeValorGlosado}"


    Click no Item                                  //div[@data-member="CD_MOTIVO_ACEITE"][@data-row="${RecebeLinha}"]/..
    Preencher campo                                //input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@row="${RecebeLinha}"]                            ${MotivoAceite} 
    Send Keys                                      enter

    Click no Item                                  //div[@data-member="CD_MOTIVO_GLOSA"][@data-row="${RecebeLinha}"]/..
    Preencher campo                                //input[@class="ui-widget-content ui-buttoninput ui-corner-left"][@row="${RecebeLinha}"]                            ${MotivoGlosa} 
    Send Keys                                      enter
    
    
    
    
    
     


