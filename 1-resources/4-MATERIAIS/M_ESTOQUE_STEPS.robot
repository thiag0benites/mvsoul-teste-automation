##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/4-MATERIAIS/M_ESTOQUE_PAGE.robot

*** Keywords ***

Campos Obrigatorias a serem preenchidas |${Descricao}||${Tipo}||${Rouparia}||${Setor}|
    Click no Item                                           ${CampoDescricao}
    Preencher campo                                         ${CampoDescricao}    ${Descricao}
    Click no Item                                           ${CampoTipo}
    SeleniumLibrary.Input Text                              ${BtnTipo}           ${Tipo}
    Click no Item                                           ${BtnMultiEmpresa}
    Click no Item                                           ${BtnOK}
    Sleep    3
    Clicar no Campo e Preencher Informacao                  ${CampoRouparia}        ${CampoRouparia}       ${Rouparia}
    Send Keys                                               enter       
    Selecionar Item Na Lista                                ${BtnSetor}    ${Setor}   ${Setor}    
    
Salvar e validar |${Informacao1}||${Informacao2}|     
    Click Elemento por titulo                               Salvar      
    Validar Informacao Item                                 ${Alerta}    ${Informacao1}
    Click no Item                                           ${BtnAlerta}
    Validar Informacao Item                                 ${Alerta}    ${Informacao2}






