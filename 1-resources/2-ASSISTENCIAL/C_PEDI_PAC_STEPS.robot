##################################################################################################################################
# Autor: Fernando Lima
# Decrição: Passos da tela Consulta de Pedidos de Exame por Paciente
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource          ../../2-pages/2-ASSISTENCIAL/C_PEDI_PAC_PAGE.robot

*** Variable ***

*** Keywords ***
Preencher Numero Paciente |${EntradaDados}|
   Preencher campo                           ${CampoDados}               ${EntradaDados}      
   
Clicar Botao Executar 
    Click no Item                            ${BotaoExecutar} 
    
Validar Elementos Tela |${NuAtend}| |${NuPedido}| |${DescrExame}| |${NomePaciente}| |${PresSolicitante}|
    Validar Elemento Pelo Titulo             ${NuAtend}     
    Validar Elemento Pelo Titulo             ${NuPedido}    
    Validar Elemento Pelo Titulo             ${DescrExame}  
    Validar Elemento Pelo Titulo             ${NomePaciente} 
    Validar Elemento Pelo Titulo             ${PresSolicitante}  

