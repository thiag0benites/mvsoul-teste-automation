##################################################################################################################################
# Autor: Luiz Henrique Ramalho
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/1-ATENDIMENTO/ALT_PAC_PAGE.robot

*** Keywords ***

Campos Obrigatorios a serem preenchidos e Salvar
    Selecionar Item Na Lista                                ${BtnAtendimento}          ABEL LOPES DE LIMA   ABEL LOPES DE LIMA
    Clicar no botão Executar
    Selecionar Item Na Lista                                ${BtnMotivoDaAlta}         ALTA A PEDIDO                                    ALTA A PEDIDO
    Selecionar Item Na Lista                                ${BtnTipoDeLimpeza}        ADMINISTRATIVA                                   ADMINISTRATIVA
    Selecionar Item Na Lista                                ${BtnProcedimentoDaAlta}   ANGIOTENSINA II                                  ANGIOTENSINA II
    Selecionar Item Na Lista                                ${BtnProcedimentoCIH}      EXCISÃO LOCAL DE TUMOR DO RETO EM ONCOLOGIA      EXCISÃO LOCAL DE TUMOR DO RETO EM ONCOLOGIA
    Preencher campo                                         ${CampoObservacaoDaAlta}   ALTA LIBERADA
    Click no Item                                           ${BtnCIDAtendimento}
    Selecionar Item Na Lista                                ${BtnCIDPrincipal}         ABANDONO                                         ABANDONO
    Click no Item                                           ${BtnConfirmarAlta}
    Validar Informacao Item                                 ${Alerta}                  Deseja realizar a alta para o paciente 
    Clicar no botão Sim
    
Comprovante da Alta Hospitalar do Paciente    
    Seleciona Item Combobox                                 ${BtnSaidaDoRelatorio}     Tela                            
    Click no Item                                           ${BtnImprimir}
    Click no Item                                           ${BtnSair}
    Validar Informacao Item                                 ${Alerta}                  A alta foi realizada com sucesso !
    Click no Item                                           ${BtnOK}
 