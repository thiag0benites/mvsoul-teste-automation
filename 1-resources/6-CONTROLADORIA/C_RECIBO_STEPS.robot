##################################################################################################################################
# Autor: José Rocha
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/C_RECIBO_PAGE.robot

*** Keywords ***

Remover Marcacao do Campo Argumentos de Pesquisa
    Clicar Botao se estiver Visivel           ${BtnDepAntecipado}
    Clicar Botao se estiver Visivel           ${BtnRecebimento}
    Clicar Botao se estiver Visivel           ${BtnReceitaDireta}
    Clicar Botao se estiver Visivel           ${BtnDespesaDireta}
    Clicar Botao se estiver Visivel           ${BtnPagamento}
    Clicar Botao se estiver Visivel           ${BtnDevolucaoDepAnt}
Selecionar o Tipo de Recibo para Imprimir
    Clicar Botao se estiver Visivel           ${BtnRecebimento}
Executar Pesquisa
    Clicar Botao se estiver Visivel           ${BtnExecutarPesquisa}
#Imprimir Recibo
#    Click no Item                             ${ColunaStatus}


#Clicar Botao se estiver Aguardando
#    [Arguments]             ${Botao}                        
#    ${Status}               Run Keyword And Return Status           Wait Until Element Is Visible                 ${BtnImprimir}          
#    Run Keyword If          '${PrimeiraLinhaStatus}' == 'Aguardando'               Click no Item                  ${BtnImprimir}                    
    #ELSE IF                 