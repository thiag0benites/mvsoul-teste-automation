##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/RealizarAltaHospitalarPage.robot

*** Variable ***

*** Keywords ***
Informar código "Atendimento" no campo < Atendimento>

Informar os campos Motivo da Alta |${dados}[realAltaHospMotivAlta]|,Tipo de Limpeza |${dados}[realAltaHospTipLimp]|, Procedimento da Alta |${dados}[realAltaHospProcAlta]|, Procedimento CIH |${dados}[realAltaHospProcCih]|, Observação da Alta |${dados}[realAltaHospObsAlta]|

Clicar no botao [Sim] da mensagem

Seleciona na opção [Saída do Relatório] a opção 'Tela'
    
Clicar no botao [Imprimir]
    
Clicar no botao [Sair] da tela "Comprovante de Alta Hospitalar do Paciente"
    
Clicar no [Ok] da mensagem;