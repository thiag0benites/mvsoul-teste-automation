##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/1-ATENDIMENTO/M_ESC_DIA_EXT_PAGE.robot

*** Variables ***
                

*** Keywords ***

Escalas de Plantao Parametros |${Especialidade}||${Prestador}||${Entrada}||${Saida}||${Observacao}|
    Preencher campo                    ${CampoEspecialidade}                    ${Especialidade}
    Send Keys                          enter
    Click no Item                      ${DivPrestador} 
    Preencher campo                    ${CampoPrestador}                        ${Prestador}
    Send Keys                          enter
    Preencher campo                    ${CampoEmEdicao}                         ${Entrada}
    Send Keys                          enter
    Preencher campo                    ${CampoEmEdicao}                         ${Saida}
    Send Keys                          enter
    Preencher campo                    ${CampoEmEdicao}                         ${Observacao}






     
    
   


















