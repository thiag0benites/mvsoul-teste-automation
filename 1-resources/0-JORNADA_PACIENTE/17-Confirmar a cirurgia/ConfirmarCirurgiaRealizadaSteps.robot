##################################################################################################################################
# Autor: Thiago Benites
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../../2-pages/0-JORNADA_PACIENTE/ConfirmarCirurgiaRealizadaPage.robot

*** Variable ***

*** Keywords ***
Informar os campos Ent. realizacao |${dados}[confCirurDataAviso]|, Inicio cirurgia |${dados}[confCirurInicio]|, Fim anest |${dados}[confCirurFimAnest]|, Inicio limpeza |${dados}[confCirurInicioLimpeza]|
Clicar no botao [Confirmar]|${dados}[confCirurMsgAviso]|
Valida confirmacao de cirurgia |${dados}[confCirurMsgConfCirurgia]|