#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Cadastro de Grupo de Critérios
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_CAD_CRITERIO.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_CAD_CRITERIO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_CAD_CRITERIO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_CAD_CRITERIO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/M_CAD_CRITERIO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_cad_criterio
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMCADCRITERIO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMCADCRITERIO-001:Fluxo Principal" -d ./5-results/SCR2AMCADCRITERIO-001 "3-tests/2-ASSISTENCIAL/M_CAD_CRITERIO.robot"
# robot -v browser:firefox -t "SCR2AMCADCRITERIO-001:Fluxo Principal" -d ./5-results/SCR2AMCADCRITERIO-001 "3-tests/2-ASSISTENCIAL/M_CAD_CRITERIO.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMCADCRITERIO-001"
    Acessa a Tela Pela Busca |M_CAD_CRITERIO||Cadastro de Grupo de Critérios| @las 
    #Acessar a tela "Clínica e Assistencial>Gerenciamento de Unidades>Configuração>Tabelas>Cadastro de Grupo de Critérios"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|
    Preencher Dados Criterio |${dados}[Descricao]| |${dados}[TpCriterio]| |${dados}[VlUnico]| |${dados}[IdFormula]| |${dados}[TpValidade]| |${dados}[VlValidade]| |${dados}[IdPEP]|
    Validar Codigos Relacionados ao Criterio |${dados}[Tipo1]| |${dados}[Tipo2]|
    Preencher Codigos Relacionados |${dados}[CdRelacionado1]| |${dados}[CdRelacionado2]|
    Preencher Formula |${dados}[Formula]|
    Clicar Botao Salvar |${dados}[MensagemSucesso]|
    # Retornar massa de dados para status inicial do teste 
    Excluir Criterio Cadastrado |${dados}[Descricao]| |${dados}[MensagemNenhumRegistro]|