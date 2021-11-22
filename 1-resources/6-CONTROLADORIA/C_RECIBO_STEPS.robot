##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/C_RECIBO_PAGE.robot

*** Keywords ***

Remover Marcacao do Campo Argumentos de Pesquisa
    Clicar Botao se estiver Visivel                ${BtnDepAntecipado}
    Clicar Botao se estiver Visivel                ${BtnReceitaDireta}
    Clicar Botao se estiver Visivel                ${BtnDespesaDireta}
    Clicar Botao se estiver Visivel                ${BtnPagamento}
    Clicar Botao se estiver Visivel                ${BtnDevolucaoDepAnt}
Executar Pesquisa
    Clicar Botao se estiver Visivel                ${BtnExecutarPesquisa}
Imprimir Recibo
    Click no Item                                  ${ListaStatus}
    Clicar Botao se estiver Visivel                ${FiltraStatusAguardando}
    Clicar Botao se estiver Visivel                ${BtnImprimir}
    Clicar Botao se estiver Visivel                ${BtnImprimirReciboPag}
    Sleep    8
    Switch Window
Limpar Pesquisa
    Click no Item                                  ${BtnLimparPesquisa}
Executar Reimpressão
    Clicar Botao se estiver Visivel                ${BtnExecutarPesquisa}
    Click no Item                                  ${ListaStatus}
    Clicar Botao se estiver Visivel                ${FiltraStatusEmitido}
    Clicar Botao se estiver Visivel                ${BtnReimpressao}
    Clicar Botao se estiver Visivel                ${BtnImprimirReciboPag}
    Sleep    8
    Switch Window
Cancelar Recibo 
#|${CampoMotCanc}|
    Clicar Botao se estiver Visivel                ${BtnLimparPesquisa}
    Clicar Botao se estiver Visivel                ${BtnExecutarPesquisa}
    Click no Item                                  ${ListaStatus}
    Clicar Botao se estiver Visivel                ${FiltraStatusEmitido}
    Clicar Botao se estiver Visivel                ${BtnMotivoCancel}
    Clicar no Campo e Preencher Informacao         ${CampoFiltroMotCancel}    ${CampoFiltroMotCancel}    $BORDERO REAUTILIZAVEL
    Clicar Botao se estiver Visivel                ${BtnFiltrar}
    Clicar Botao se estiver Visivel                ${BtnOk}
    Clicar Botao se estiver Visivel                ${BtnCancel}
Cadastrar Responsável
    Clicar Botao se estiver Visivel                ${BtnCadastrarResp}
Finalizar Sistema
    Click no Item                                  ${SairDoSistema}