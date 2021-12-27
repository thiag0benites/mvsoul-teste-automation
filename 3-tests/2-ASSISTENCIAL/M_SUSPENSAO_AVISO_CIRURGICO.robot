#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Teste da tela M_SUSPENSAO_AVISO_CIRURGICO
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SUSPENSAO_AVISO_CIRURGICO.robot"
# firefox: robot -v browser:firefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SUSPENSAO_AVISO_CIRURGICO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SUSPENSAO_AVISO_CIRURGICO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/2-ASSISTENCIAL "3-tests\2-ASSISTENCIAL\M_SUSPENSAO_AVISO_CIRURGICO.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/2-ASSISTENCIAL/M_SUSPENSAO_AVISO_CIRURGICO_STEPS.robot
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup      Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessao
Test Teardown     Encerra sessao

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}          M_SUSPENSAO_AVISO_CIRURGIA
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR2AMSUSPENSAOAVISOCIRURGICO-001:Fluxo Principal
# robot -v browser:chrome -t "SCR2AMSUSPENSAOAVISOCIRURGICO-001:Fluxo Principal" -d ./5-results/M_SUSPENSAO_AVISO_CIRURGICO "3-tests/2-ASSISTENCIAL/M_SUSPENSAO_AVISO_CIRURGICO.robot"
# robot -v browser:firefox -t "SCR2AMSUSPENSAOAVISOCIRURGICO-001:Fluxo Principal" -d ./5-results/M_SUSPENSAO_AVISO_CIRURGICO "3-tests/2-ASSISTENCIAL/M_SUSPENSAO_AVISO_CIRURGICO.robot"
    ${dados}    Seleciona massa de dados na suite "${suite}" do caso de teste "SCR2AMSUSPENSAOAVISOCIRURGICO-001"
    Acessa a Tela Pela Busca |${dados}[NomeModulo]||${dados}[TituloTela]| @las
    Acessar o Aguardando realizacao
    Preencher o campo Aviso da cirurgia |${dados}[numAviso]|
    Suspender o aviso cirurgico
    Preencher os campos Motivo e observacao para realizar a suspensao |${dados}[motivo]|,|${dados}[observacao]|
<<<<<<< HEAD
    Clicar em confirmar suspensao 
    Clicar em cancelar 
    Suspender o aviso cirurgico 
    Validar mensagem de cancelamento da suspensao |${dados}[MsgEsperada]|
=======
    Clicar em confirmar suspensao
    Clicar em cancelar
    Clicar em confirmar suspensao
    Validar mensagem de cancelamento da suspensao |${dados}[MsgEsperada]|
>>>>>>> aa21412329f594f7fb0163c1958ea84030fd8f62
