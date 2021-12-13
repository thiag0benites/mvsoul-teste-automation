##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/RealizarAltaHospitalarPage.robot
Resource    ../1-Cadastro de Paciente/CadastroDePacienteSteps.robot
Resource    ../../4-MATERIAIS/M_ENTRADA_NOVA_STEPS.robot

*** Variable ***

*** Keywords ***
Informar o codigo de atendimento |${AltCodAtendimento}|${print}
    Preencher campo    ${inputAltCodAtend}    ${AltCodAtendimento}
    Sleep    1
    Clicar no botao [Executar]||
    
Preencher os campos |${AltaHospMotivoAlta}|,|${AltaHospTipoLimp}|,|${AltaHospProcCih}|,|${AltaHospObsAlta}|@print
    Preencher Campo  ${inputAltaHospMotivoAlta}    ${AltaHospMotivoAlta} 
    Sleep    1
    Preencher campo    ${inputAltaHospTipoLimp}    ${AltaHospTipoLimp}
    Sleep    1
    # Preencher campo    ${inputAltaHospProcAlta}    ${AltaHospProcAlta}
    # Sleep    1
    Preencher campo    ${inputAltaHospProcCih}    ${AltaHospProcCih}
    Sleep    1
    Preencher campo    ${inputAltaHospObsAlta}    ${AltaHospObsAlta}
    Sleep    1 


Clicar no botao [Sim] da mensagem

Seleciona na opção [Saída do Relatório] a opção 'Tela'
    
Clicar no botao [Imprimir]
    
Clicar no botao [Sair] da tela "Comprovante de Alta Hospitalar do Paciente"
    
Clicar no [Ok] da mensagem;