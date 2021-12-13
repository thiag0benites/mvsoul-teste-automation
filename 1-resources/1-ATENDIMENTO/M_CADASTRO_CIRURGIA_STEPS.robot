##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/1-ATENDIMENTO/M_CADASTRO_CIRURGIA_PAGE.robot
*** Variables ***
                

*** Keywords ***

Escalas de Plantao Parametros |${Especialidade}||${Prestador}||${Entrada}||${Saida}||${Observacao}|
    Preencher campo                    ${CampoTempoUltilizacao}                 0400
    Send Keys                          enter
    Preencher campo                    ${CampoAtendimento}                      1000002322
    Send Keys                          enter
    Preencher campo                    ${CampoDivSanguineo}                     A +
    Send Keys                          enter
    Preencher campo                    ${CampoDataEntrada}                      11/12/2021 10:00
    Send Keys                          enter
    Preencher campo                    ${CampoDataSaida}                        11/12/2021 13:00
    Send Keys                          enter
    Preencher campo                    ${CampoDataEntradaAnestesia}             11/12/2021 10:10
    Send Keys                          enter
    Preencher campo                    ${CampoDataSaidaAnestesia}               11/12/2021 12:30
    Send Keys                          enter
    Preencher campo                    ${CampoDataEntradaCirurgia}              11/12/2021 10:20
    Send Keys                          enter
    Preencher campo                    ${CampoDataSaidaCirurgia}                11/12/2021 12:20
    Send Keys                          enter
    Preencher campo                    ${CampoDataEntradaLimpeza}               11/12/2021 13:00
    Send Keys                          enter
    Preencher campo                    ${CampoDataSaidaLimpeza}                 11/12/2021 13:10
    Send Keys                          enter
    Preencher campo                    ${CampoASA}                              ASA I
    Preencher campo                    ${CampoCentroCirurgico}                  40
    Send Keys                          enter
    Preencher campo                    ${CampoSalaCirurgica}                    130
    Send Keys                          enter
    Preencher campo                    ${CampoEquipeMedica}                     2
    Send Keys                          enter 
    Preencher campo                    ${CampoCIDPre}                           O280
    Send Keys                          enter
    Preencher campo                    ${CampoCIDPos}                           O289
    Send Keys                          enter
    Click no Item                      ${btnNovaCirurgia}

















