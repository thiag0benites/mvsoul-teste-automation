#################################################################################################################################################################
# Autor: Fernando Lima
# Decrição: Teste da tela Confirmação de Coleta nos Setores e Postos
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\CONFIRMACAO_COLETA_SETOR.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\CONFIRMACAO_COLETA_SETOR.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\CONFIRMACAO_COLETA_SETOR.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\CONFIRMACAO_COLETA_SETOR.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../1-resources/2-ASSISTENCIAL/CONFIRMACAO_COLETA_SETOR_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

#Suite registrada no gerenciador de dados
${suite}            confirmacao_coleta_setor
#Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2ACONFIRMACAOCOLETASETOR-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2ACONFIRMACAOCOLETASETOR-001:Fluxo Principal" -d ./5-results/SCR2ACONFIRMACAOCOLETASETOR-001 "3-tests/2-ASSISTENCIAL/CONFIRMACAO_COLETA_SETOR.robot"
# robot -v browser:firefox -t "SCR2ACONFIRMACAOCOLETASETOR-001:Fluxo Principal" -d ./5-results/SCR2ACONFIRMACAOCOLETASETOR-001 "3-tests/2-ASSISTENCIAL/CONFIRMACAO_COLETA_SETOR.robot"
    ${dados}           Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2ACONFIRMACAOCOLETASETOR-001"
    Acessa a Tela Pela Busca |confirmacao_coleta_setor||Confirmação de Coleta nos Setores e Postos| @las
    #Validar Acesso a Tela |${dados}[NomeTela]|
    Clicar Botao Procurar
    Digita Cod perd |${dados}[CodAtend]|
    Clicar Btn Exec Consulta
    Validar Dados Triagem Coleta |${dados}[NomePaciente]| |${dados}[NomeExame]| |${dados}[NumPac]| |${dados}[Atendimento]|

