##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/5-FATURAMENTO/O_GERDIS_P321_PAGE.robot

*** Keywords ***

Dados da Fatura |${Fatura}|
    Wait Until Element Is Visible                           ${btnCodigo}    120
    Selecionar Item Na Lista                                ${btnCodigo}    ${Fatura}    ${Fatura}
    

Dados para geracao |${TipoDaFatura}||${Autorizacao}||${Copias}||${Mensagem}|

    ${ItensTipoDaFatura}                                    Split String         ${TipoDaFatura}        
    ${ItensAutorizacao}                                     Split String         ${Autorizacao}         
    ${ItensMensagens}                                       Split String         ${Mensagem}            
    Preencher campo                                         ${CampoCopias}       ${Copias}

    FOR    ${ItemTipoDaFatura}    IN                        @{ItensTipoDaFatura}
       Sleep    1
 #      Seleciona Item Combobox                              ${DivTipoDaFatura}   ${ItemTipoDaFatura}
        Preencher campo                                     ${CampoTipoDaFatura}    ${ItensTipoDaFatura}
        Press Keys                                          ${DivTipoDaFatura}    ENTER


       FOR    ${ItemAutorizacao}    IN                      @{ItensAutorizacao}
           Sleep    1 
 #          Seleciona Item Combobox                          ${DivAutorizacao}   ${ItemAutorizacao}
           Preencher campo                                   ${CampoAutorizacao}    ${ItensAutorizacao}
           Press Keys                                        ${DivAutorizacao}    ENTER
           Remessa e Consistir |${Mensagem}|
           
       END
        
    END

    
Remessa e Consistir |${Mensagem}|
    Click no Item                                           ${CheckBoxRemessaDisponivel1}
    Click no Item                                           ${BtnIncluiRegistrosSelecionados}
    Click no Item                                           ${CheckBoxRemessasSelecionadas1}
    Click no Item                                           ${BtnIncluiConsistir}
    
    
    Wait Until Element Is Visible    ${Alerta}    120
    Sleep    3
    
    ${MsgRecebida}    Get Text                             ${Alerta}
    IF    ${MsgRecebida} != ${Mensagem1}
        Fail    ${MsgRecebida}
        Clicar no botão Não
    ELSE
        
        Valida Mensagem                                         ${Alerta}   ${Mensagem1}
        Clicar no botão Sim                                                  #Atenção : Processo de consistência concluído com sucesso. Exportar agora o Arquivo de Produção de BPA?
    
        Valida Mensagem                                         ${Alerta}    ${Mensagem2}
        Click no Item                                           ${BtnOK}    #AVISO: Arquivo gerado com sucesso!
    
        Valida Mensagem                                         ${Alerta}    ${Mensagem3}
        Clicar no botão Não                                                  #ATENÇÃO: Deseja finalizar a geração da(s) remessa(s) selecionadas e fecha-la(s)?

        Valida Mensagem                                         ${Alerta}    ${Mensagem4}
        Click no Item                                           ${BtnOK}     #Atenção: Não foi encontrado produção de BPA CONSOLIDADO nesta competência!

        Valida Mensagem                                         ${Alerta}    ${Mensagem5}
        Click no Item                                           ${BtnOK}     #Atenção: Não foi encontrado produção de BPA INDIVIDUALIZADO nesta competência!

        Valida Mensagem                                         ${Alerta}    ${Mensagem6}
         #AS                                                                    Nenhumas alterações para gravar. 
    
    END
   
   
   
   
   
   
   
   
   
   
    







