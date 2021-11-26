##################################################################################################################################
# Autor: José Neto
# Decrição: Elementos e metodos da pagina
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                            ../../2-pages/6-CONTROLADORIA/C_RECIBO_PAGE.robot

*** Keywords ***

Selecionar o Tipo de Recibo que Necessita Imprimir
    Clicar Botao se estiver Visivel                ${BtnDepAntecipado}
    Clicar Botao se estiver Visivel                ${BtnReceitaDireta}
    Clicar Botao se estiver Visivel                ${BtnDespesaDireta}
    Clicar Botao se estiver Visivel                ${BtnPagamento}
    Clicar Botao se estiver Visivel                ${BtnDevolucaoDepAnt}
Clicar em <Executar Pesquisa>
    Clicar Botao se estiver Visivel                ${BtnExecutarPesquisa}
Clicar em <Imprimir>
    Click no Item                                  ${ListaStatus}
    Clicar Botao se estiver Visivel                ${FiltraStatusAguardando}
    Clicar Botao se estiver Visivel                ${BtnImprimir}
    Clicar Botao se estiver Visivel                ${BtnImprimirReciboPag}
    Sleep    8
    Switch Window
Clicar em <Limpar Pesquisa>
    Seleciona frame                                ${IdIframe}                180
    Click no Item                                  ${BtnLimparPesquisa}
Clicar em <Reimpressao>
    Clicar Botao se estiver Visivel                ${BtnExecutarPesquisa}
    Click no Item                                  ${ListaStatus}
    Clicar Botao se estiver Visivel                ${FiltraStatusEmitido}
    Clicar Botao se estiver Visivel                ${BtnReimpressao}
    Clicar Botao se estiver Visivel                ${BtnImprimirReciboPag}
    Sleep    8
    Switch Window
Clicar em <Cancelar>
#${CampoMotCanc}|
    Seleciona frame                                ${IdIframe}                180
    Clicar Botao se estiver Visivel                ${BtnLimparPesquisa}
    Clicar Botao se estiver Visivel                ${BtnExecutarPesquisa}
    Click no Item                                  ${ListaStatus}
    Clicar Botao se estiver Visivel                ${FiltraStatusEmitido}
    Clicar Botao se estiver Visivel                ${BtnMotivoCancel}
    Clicar no Campo e Preencher Informacao         ${CampoFiltroMotCancel}    ${CampoFiltroMotCancel}    %BORDERO REAUTILIZAVEL
    Clicar Botao se estiver Visivel                ${BtnFiltrar}
    Clicar Botao se estiver Visivel                ${BtnOk}
    Clicar Botao se estiver Visivel                ${BtnCancel}
Clicar em <Cadastrar Responsavel>
    Clicar Botao se estiver Visivel                ${BtnCadastrarResp}
Clicar em <Sair>
    Click no Item                                  ${SairDoSistema}