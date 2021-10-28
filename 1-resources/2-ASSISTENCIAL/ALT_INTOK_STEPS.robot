##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Alteração de Atendimento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/ALT_INTOK_PAGE.robot

*** Variable ***

*** Keywords ***
Consultar Atendimento
    Preencher Campo                         ${CampoAtendimento}                 1000002160
    Click Elemento por titulo               Executar Consulta 
    Validar Campos De Retorno Da Consulta 

Validar Campos De Retorno Da Consulta 
    Validar Elemento Pelo Titulo            Internação
    Validar Elemento Pelo Titulo            1312609
    Validar Elemento Pelo Titulo            PACIENTE TESTE RPA
    Validar Elemento Pelo Titulo            13/10/2021
    Validar Elemento Pelo Titulo            14:13
    Validar Elemento Pelo Titulo            PARTICULAR BRASILIA
    Validar Elemento Pelo Titulo            PARTICULAR
    Validar Elemento Pelo Titulo            INTERNAÇÃO
    Validar Elemento Pelo Titulo            AARON MELO
    Validar Elemento Pelo Titulo            ONCOLOGIA CLINICA
    Validar Elemento Pelo Titulo            ANGIOTENSINA II                                            
    Validar Elemento Pelo Titulo            CLINICA
    Validar Elemento Pelo Titulo            APARTAMENTO  

Alterar Campo Servico |${NovoServico}|
    Click no Item                           ${BotaoLovServico}
    Selecionar Item Na Lista                ${NovoServico}                         ${NovoServico}
    Clicar Botao Salvar
    Validar Elemento Pelo Titulo            ${NovoServico}




