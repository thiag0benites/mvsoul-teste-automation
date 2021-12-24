##################################################################################################################################
# Autor: Amanda Nascimento
# Decrição: M_USUARIO
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource                ../../2-pages/7-APOIO_TI/M_USUARIO_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher os campos Identificacao|${dados}[identificacao]|, Nome Completo|${dados}[nomeCompleto]|, CPF|${dados}[cpf]|, Email|${dados}[email]|, DDD|${dados}[ddd]|, Celular|${dados}[celular]|, Matricula|${dados}[matricula]|, Cracha|${dados}[cracha]|, Data Nascimento|${dados}[dtNasc]|

Selecionar Profissao

Selecionar checkbox [Todos]

Selecionar Papel principal

Clicar no botao [Reconciliar]

