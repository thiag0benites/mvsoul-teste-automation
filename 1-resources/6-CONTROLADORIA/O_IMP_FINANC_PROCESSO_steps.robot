##################################################################################################################################
# Autor: Marcio Nascimento
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
Preencher campo Período com "${Data_Inicial}" e "${Data_Final}"
    Preencher campo                               ${InputDataInicial}                    ${Data_Inicial}
    Preencher campo                               ${InputDataFinal}                      ${Data_Final}
    Click no Item                                 ${Btn_Pagamento}
    Click no Item                                 ${Btn_Liberar}

Validar Pop-Pup e campos preenchidos referente ao retorno da pesquisa
    Validar Pop-Pup de Alerta e Clicar            ${MensagemAlert}                       ${Btn_OK}
    Validar Item                                  ${Campo_QntdeRegistros}
    Validar Item                                  ${Campo_MensagemProcesso}


