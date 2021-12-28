##################################################################################################################################
# Autor: Flavio Silva
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
Resource          ../../2-pages/5-FATURAMENTO/M_NOTA_FISCAL_PAGE.robot
Resource    M_LAUDO_SIAPAC_P321_STEPS.robot

*** Variables ***

*** Keywords ***

Preencha o Atendimento |${Atendimento}|
    Click no Item                    ${Notificacao} 
    Preencher Campo                  ${CampoAtendimento}            ${Atendimento}
    Click Elemento por titulo        Executar Consulta
    Click no Item                    ${BtnRecebe} 

Clique em imprimir     
    Click no Item                    ${BtnImprimir}
    # Click no Item                    ${BtnNovaNota} 
    # Preencher Campo                  ${CampoEmail}                 PREFEITURA@LONDRINA.ORG.GOV
    Click no Item                    ${BtnNotaFiscal}  
        
      
Verificacao da Conversão de RPS em NFe
    Click no Item                    ${BtnAtualizar}
    Click no Item                    ${BtnSair}
    #Validar Informacao Item          ${MsgUsuario}                   Registros gravados com sucesso
    Click no Item                    ${BtnSim} 
    Click no Item                    ${BtnSair2}
    Click Elemento por titulo        Sair    

Cancelar nota fiscal |${MsgLida}|
    Click no Item                    ${Notificacao} 
    Click no Item                    ${BtnRecebe} 
    Click no Item                    ${BtnImprimir}
    Click no Item                    ${BtnNovaNota} 
    Click no Item                    ${BtnCancelar} 
    Preencher Campo                  ${DataCancel}                    28/12/2021
    Click no Item                    ${BtnMotivo}
    Click no Item                    ${LinhaMotivo}
    Click no Item                    ${BtnOk}  
    Validar Informacao Item          ${MsgUsuario2}                   ${MsgLida}                     