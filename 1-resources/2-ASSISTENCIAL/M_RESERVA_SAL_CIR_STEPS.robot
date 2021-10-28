##################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Passos da tela de Reserva de Sala Cirúrgica
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/M_RESERVA_SAL_CIR_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Dados Da Reserva
    Ativar Lov e Selecionar Item            SALA_02                         SALA_02
    Click no Item                           ${CampoPrestador}
    Ativar Lov e Selecionar Item            GEISHA ABREU SOARES DE PINA     GEISHA ABREU SOARES DE PINA
    Preencher Campo                         ${CampoDtInicial}               26/10/2021
    Preencher Campo                         ${CampoDtFinal}                 26/10/2021
    Preencher Campo                         ${CampoHrInicial}               12:00
    Preencher Campo                         ${CampoHrFinal}                 14:00

Ativar Lov e Selecionar Item
    [Arguments]                             ${Item}                         ${ItemNaLista}    
    Click no Item                           ${BotaoLov} 
    Selecionar Item Na Lista                ${Item}                         ${ItemNaLista}

Clicar Botao Salvar 
    Click Elemento por titulo               Salvar
    Valida Mensagem                         ${MensagemSalvar}               Registros gravados com sucesso

####   Keyword para retornar massa ao ponto incial do teste   ###
Excluir Reserva Realizada   
    Click Elemento por titulo               Procurar
    Clicar no Campo e Preencher Informacao  ${CampoSala}                    ${CampoSalaEditavel}                89           
    Click Elemento por titulo               Executar Consulta 
    Click Elemento por titulo               GEISHA ABREU SOARES DE PINA
    Click Elemento por titulo               Apagar
    Clicar Botao Salvar 
