#################################################################################################################################################################
# Autor: Andréa Rodrigues
# Decrição: Teste da tela Entrada de Empréstimo
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_EMPRESTIMO_ENT.robot"
# firefox: robot -v browser:firefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_EMPRESTIMO_ENT.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_EMPRESTIMO_ENT.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/4-MATERIAIS "3-tests\4-MATERIAIS\M_EMPRESTIMO_ENT.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../2-pages/4-MATERIAIS/M_EMPRESTIMO_ENT_PAGE.robot
Resource            ../../1-resources/4-MATERIAIS/M_EMPRESTIMO_ENT_STEPS.robot
Resource            ../../Config.robot

### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variable ***    

# Suite registrada no gerenciador de dados
${suite}            m_emprestimo_ent
# Recebe dados do gerenciador
${dados}

*** Test Case ***
SCR4MMEMPRESTIMOENT-001:Fluxo Principal   
# robot -v browser:chrome -t "SCR4MMEMPRESTIMOENT-001:Fluxo Principal" -d ./5-results/SCR4MMEMPRESTIMOENT-001 "3-tests/4-MATERIAIS/M_EMPRESTIMO_ENT.robot"
# robot -v browser:firefox -t "SCR4MMEMPRESTIMOENT-001:Fluxo Principal" -d ./5-results/SCR4MMEMPRESTIMOENT-001 "3-tests/4-MATERIAIS/M_EMPRESTIMO_ENT.robot"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SCR4MMEMPRESTIMOENT-001"
    Acessar a tela "Materiais e Logística>Almoxarifado>Movimentações>Entradas>Entrada de Serviços"@nprint @las
    Validar Acesso a Tela |${dados}[NomeTela]|


