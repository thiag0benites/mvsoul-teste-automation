#################################################################################################################################################################
# Autor: Danilo Campanello
# Decrição: Automação da funcionalidade Informações Relevantes
#################################################################################################################################################################
# Execução Exemplo:
# chrome:         robot -v browser:chrome -d ./5-results "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# firefox:        robot -v browser:firefox -d ./5-results "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:         robot -v browser:headlesschrome -d ./5-results/PRONTUARIO ELETRONICO "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# firefox:        robot -v browser:headlessfirefox -d ./5-results/PRONTUARIO ELETRONICO "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
#################################################################################################################################################################
Pré-condições
1 - Usuário utilizado deve estar vinculado à um prestador
(Apoio à TI > Gestão de Usuários > Autorização > Usuários) (M_USUARIOS)

2 - O controle EVOMED deve ter objeto associado.
(Clínica e Assistencial > Gerenciamento de Unidades > Configuração > Tabelas > Tipos de Objetos de Prontuário) (M_PAGU_OBJETO)

3 - Perfis de área pessoal e de prontuário devem estar configurados para o prestador logado e tipo de atendimento utilizado. O módulo MVPEP_TEMA_EVOLUCAO deve estar de acordo com parâmetros abaixo:
CD_OBJETO: valor de acordo com pré condição 2
SN_HISTORICO =    N
SN_CONFIRMA_REGISTRO_NOVO = S
(Clínica e Assistencial > Gerenciamento de Unidades > Configuração > Tabelas > PEP > Perfil do Usuário) (M_CONFIG_PERFIL_USUARIO)
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource          ../../1-resources/3-CLINICO (PEP)/MVPEP_TEMA_EVOLUCAO_STEPS.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup     Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Variables ***
# Suite registrada no gerenciador de dados
# ${suite}        mvpep_informacoes_relevantes
# Recebe dados do gerenciador
# ${dados}

*** Test Cases ***
SMF-5499:Criar Evolucao
# robot -v browser:chrome -t "SMF-5499:Criar Evolucao" -d ./5-results/SMF-5499 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5499:Criar Evolucao" -d ./5-results/SMF-5499 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
    Inserir Data de Inicio |25/SET/2021|
    Inserir Data Final |25/SET/2021|
    Inserir Hora|12|
    Inserir Minutos|45|
    Clicar Botao |Salvar|
    Insere Texto Evolucao|Teste Automação|
    Clicar Botao |Assinar|
    Clicar Botao |Fechar Pop-Up|
    # Validador |Evolucao|

SMF-5498:Criar Evolucao com Pop-Up de Novo Registro Habilitado
# robot -v browser:chrome -t "SMF-5498:Criar Evolucao com Pop-Up de Novo Registro Habilitado" -d ./5-results/SMF-5498 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5498:Criar Evolucao com Pop-Up de Novo Registro Habilitado" -d ./5-results/SMF-5498 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
    Inserir Data de Inicio |17/JUL/2021|
    Inserir Data Final |17/JUL/2021|
    Inserir Hora|12|
    Inserir Minutos|45|
    Clicar Botao |Salvar|
    Insere Texto Evolucao|Teste Automação|
    Clicar Botao |Assinar|
    Validador |POP-UP Evolucao|

SMF-5487:Copiar Evolucao
# robot -v browser:chrome -t "SMF-5487:Copiar Evolucao" -d ./5-results/SMF-5487 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5487:Copiar Evolucao" -d ./5-results/SMF-5487 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Historico|
    # Clicar no Menu |Evolução Tema|@nprint
    # Seleciona Data do Historico
    Seleciona Historico
    Copiar Historico
    Inserir Data de Inicio |28/SET/2021|
    Inserir Data Final |28/SET/2021|
    Inserir Hora|12|
    Inserir Minutos|45|
    Clicar Botao |Salvar|
    Insere Texto Evolucao Copia|Teste Cópia|
    Clicar Botao |Assinar|
    Clicar Botao |Fechar Pop-Up|
    # Validador |Evolucao Copia|

SMF-5612:Copiar Mais de uma Evolucao no Mesmo Documento
# robot -v browser:chrome -t "SMF-5612:Copiar Mais de uma Evolucao no Mesmo Documento" -d ./5-results/SMF-5612 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5612:Copiar Mais de uma Evolucao no Mesmo Documento" -d ./5-results/SMF-5612 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Historico|
    # Seleciona Data do Historico
    Seleciona Historico
    Copiar Historico
    Inserir Data de Inicio |17/SET/2021|
    Inserir Data Final |17/SET/2021|
    Inserir Hora|12|
    Inserir Minutos|45|
    Clicar Botao |Salvar|
    Insere Texto Evolucao Copia|Teste Cópia 1|
    Clicar Botao |Assinar|
    Clicar Botao |Fechar Pop-Up|
    Clicar Botao |Voltar|
    Clicar Botao |Historico|
    Seleciona Data do Historico
    Seleciona Historico
    Copiar Historico
    Inserir Data de Inicio |17/SET/2021|
    Inserir Data Final |17/SET/2021|
    Inserir Hora|12|
    Inserir Minutos|45|
    Clicar Botao |Salvar|
    Insere Texto Evolucao Copia|Teste Cópia 2|
    Clicar Botao |Assinar|
    Validador |Evolucao Copia|

SMF-5500:Salvar Evolucao Sem Fechar
# robot -v browser:chrome -t "SMF-5500:Salvar Evolucao Sem Fechar" -d ./5-results/SMF-5500 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5500:Salvar Evolucao Sem Fechar" -d ./5-results/SMF-5500 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
    Inserir Data de Inicio |17/JUL/2021|
    Inserir Data Final |17/JUL/2021|
    Inserir Hora|12|
    Inserir Minutos|45|
    Clicar Botao |Salvar|
    # Validador |Salvar|

SMF-5501:Excluir Evolucao Aberta
# robot -v browser:chrome -t "SMF-5501:Excluir Evolucao Aberta" -d ./5-results/SMF-5501 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5501:Excluir Evolucao Aberta" -d ./5-results/SMF-5501 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
    # Inserir Data de Inicio |13/JUL/2021|
    # Inserir Data Final |13/JUL/2021|
    # Inserir Hora|12|
    # Inserir Minutos|45|
    # Clicar Botao Salvar
    # Botao Voltar
    Clicar Botao |Editar|
    Clicar Botao |Excluir|
    Clicar Botao |Continuar|
    Validador |Excluir Evolucao|

SMF-5502:Nao Permitir Copia de Evolucao
# robot -v browser:chrome -t "SMF-5502:Nao Permitir Copia de Evolucao" -d ./5-results/SMF-5502 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5502:Nao Permitir Copia de Evolucao" -d ./5-results/SMF-5502 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Validador |Botao Copiar|

SMF-5505:Cancelar Evolucao
# robot -v browser:chrome -t "SMF-5505:Cancelar Evolucao" -d ./5-results/SMF-5505 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5505:Cancelar Evolucao" -d ./5-results/SMF-5505 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
    Inserir Data de Inicio |20/JUL/2021|
    Inserir Data Final |20/JUL/2021|
    Inserir Hora|12|
    Inserir Minutos|45|
    Clicar Botao |Salvar|
    Insere Texto Evolucao|Teste Cancelar Evolucao|
    Clicar Botao |Assinar|
    Clicar Botao |Fechar Pop-Up|
    Clicar Botao |Voltar|
    Clicar Botao |Historico|
    Seleciona Data do Historico
    Seleciona Historico
    Clicar Botao |Cancelar|
    Insere Texto Evolucao|Teste Cancelar Evolucao|
    Clicar Botao |Salvar|
    Validador |Cancelar Evolucao|

SMF-5503:Imprimir Evolucao Como Rascunho
# robot -v browser:chrome -t "SMF-5503:Imprimir Evolucao Como Rascunho" -d ./5-results/SMF-5503 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5503:Imprimir Evolucao Como Rascunho" -d ./5-results/SMF-5503 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Imprimir|
    Validador |Impressao|

SMF-5506:Imprimir Evolucao
# robot -v browser:chrome -t "SMF-5506:Imprimir Evolucao" -d ./5-results/SMF-5506 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5506:Imprimir Evolucao" -d ./5-results/SMF-5506 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Historico|
    # Seleciona Data do Historico
    Seleciona Historico
    Clicar Botao |Imprimir|
    Validador |Impressao|

SMF-5611:Imprimir Todas as Evolucoes de uma Data
# robot -v browser:chrome -t "SMF-5611:Imprimir Todas as Evolucoes de uma Data" -d ./5-results/SMF-5611 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5611:Imprimir Todas as Evolucoes de uma Data" -d ./5-results/SMF-5611 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Historico|
    Seleciona Data do Historico
    Seleciona Historico
    Clicar Botao |Imprimir|
    Validador |Impressao|

SMF-5507:Nao Permitir Imprimir Evolucao
# robot -v browser:chrome -t "SMF-5507:Nao Permitir Imprimir Evolucao" -d ./5-results/SMF-5507 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5507:Nao Permitir Imprimir Evolucao" -d ./5-results/SMF-5507 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Validador |Botao Imprimir|

SMF-5508:Assumir Evolucao

SMF-5510:Cancelar Evolucao Iniciada por Outro Prestador
# robot -v browser:chrome -t "SMF-5510:Cancelar Evolucao Iniciada por Outro Prestador" -d ./5-results/SMF-5510 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5510:Cancelar Evolucao Iniciada por Outro Prestador" -d ./5-results/SMF-5510 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    #Clicar Botao |Historico|
    # Seleciona Data do Historico
    # Seleciona Historico
    Clicar Botao |Cancelar|
    Insere Texto Evolucao|Teste Cancelar Evolucao|
    Clicar Botao |Salvar|
    Validador |Cancelar Evolucao|

SMF-5511:Salvar Evolucao Como Texto Padrao
# robot -v browser:chrome -t "SMF-5511:Salvar Evolucao Como Texto Padrao" -d ./5-results/SMF-5511 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5511:Salvar Evolucao Como Texto Padrao" -d ./5-results/SMF-5511 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
    Clicar Botao |Salvar|
    Insere Texto Evolucao|Teste de texto pré definido|
    Clicar Botao |Salvar Texto Padrao|
    Insere Titulo Texto Padrao|Titulo Teste|
    Clicar Botao |Salvar Titulo Padrao|
    Validador |Salvar Texto Padrao|

SMF-5512:Criar Evolucao Incluindo Texto Pre-definido
# robot -v browser:chrome -t "SMF-5512:Criar Evolucao Incluindo Texto Pre-definido" -d ./5-results/SMF-5512 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5512:Criar Evolucao Incluindo Texto Pre-definido" -d ./5-results/SMF-5512 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
    Clicar Botao |Salvar|
    Clicar Botao |Texto Pre-Definido|
    Inserir Texto Pre Definido
    Clicar Botao |Confirmar|
    Clicar Botao |Texto Pre-Definido|
    Clicar Botao |Assinar|
    Validador |POP-UP Evolucao|

SMF-5526:Criar Evolucao Exigindo Autorização do Professor
#################################################################################################################################################################
# Pré-condições
# 1 - Usuário utilizado para realizar a evolução deve estar vinculado à um prestador do tipo aluno, e o usuário utilizado para autorização precisa estar vinculado a um prestador do tipo professor.
# (Apoio à TI > Gestão de Usuários > Autorização > Usuários) (M_USUARIOS)
# (Serviços de Apoio > Diretoria Clínica > Tabelas > Prestadores) (CAD_PRE)
# 2 - O controle EVOMED deve ter objeto associado.
# (Clínica e Assistencial > Gerenciamento de Unidades > Configuração > Tabelas > Tipos de Objetos de Prontuário) (M_PAGU_OBJETO)
# 3 - Perfis de área pessoal e de prontuário devem estar configurados para o prestador logado e tipo de atendimento utilizado. O módulo MVPEP_TEMA_EVOLUCAO deve estar de acordo com parâmetros abaixo:
# CD_OBJETO: valor de acordo com pré condição 2
# SN_HISTORICO =    N
# SN_CONFIRMA_REGISTRO_NOVO = N
# SN_EXIGE_AUTORIZACAO_PROFESSOR = S
# (Clínica e Assistencial > Gerenciamento de Unidades > Configuração > Tabelas > PEP > Perfil do Usuário) (M_CONFIG_PERFIL_USUARIO)
# 4 - Existir atendimento gerado
# #################################################################################################################################################################
# robot -v browser:chrome -t "SMF-5526:Criar Evolucao Exigindo Autorização do Professor" -d ./5-results/SMF-5526 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5526:Criar Evolucao Exigindo Autorização do Professor" -d ./5-results/SMF-5526 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao Novo
    #Clicar Botao |Novo|
    Clicar Botao |Salvar|
    Insere Texto Evolucao|Teste Autorização Professor|
    Clicar Botao |Assinar|
    Insere Usuario|JOAOPEDRO| e Senha|MARIANAMELO| Pop Up Professor    #### Usuario Professor: JOAOPEDRO ## Senha Professor: MARIANAMELO #####
    Clicar Botao |Autorizar|
    Validador |Alteracao Professor|

SMF-5820:Impedir Criar Evolucao Exigindo Autorização do Professor

SMF-5527:Nao Permitir Criar Evolucao
# robot -v browser:chrome -t "SMF-5527:Nao Permitir Criar Evolucao" -d ./5-results/SMF-5527 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5527:Nao Permitir Criar Evolucao" -d ./5-results/SMF-5527 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Validar Botao Novo Nao Exibido
    #Validador |Botao Novo|

SMF-5529:Criar Evolucao Pos Alta
# SMF-5608:Impedir a Criacao de Evolucao Pos Alta
# # robot -v browser:chrome -t "SMF-5608:Impedir a Criacao de Evolucao Pos Alta" -d ./5-results/SMF-5608 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# # robot -v browser:firefox -t "SMF-5608:Impedir a Criacao de Evolucao Pos Alta" -d ./5-results/SMF-5608 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
#    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
#    Selecionar o paciente ''@nprint
#    Clicar no Menu |Evolução Tema|@nprint

SMF-5532:Obrigar Finalização da Evolucao por Pendência de Fechamento
# robot -v browser:chrome -t "SMF-5532:Obrigar Finalização da Evolucao por Pendência de Fechamento" -d ./5-results/SMF-5532 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5532:Obrigar Finalização da Evolucao por Pendência de Fechamento" -d ./5-results/SMF-5532 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
   # Clicar Botao |Salvar|
    Clicar Botao |Voltar Lista Paciente|
    Clicar Botao |Documento em Aberto|
    Clicar Botao |Seleciona Evolucao|
    Validador |Botao Editar|

SMF-5533:Alertar Finalização da Evolucao por Pendencia de Fechamento
# robot -v browser:chrome -t "SMF-5533:Alertar Finalização da Evolucao por Pendencia de Fechamento" -d ./5-results/SMF-5533 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5533:Alertar Finalização da Evolucao por Pendencia de Fechamento" -d ./5-results/SMF-5533 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
    #Clicar Botao |Salvar|
    Clicar Botao |Voltar Lista Paciente|
    Clicar Botao |Ignorar Pendencia|
    Validador |Lista Paciente|

SMF-5535:Criar Evolucao com Data de Referencia Anterior a Atual
# robot -v browser:chrome -t "SMF-5535:Criar Evolucao com Data de Referencia Anterior a Atual" -d ./5-results/SMF-5535 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5535:Criar Evolucao com Data de Referencia Anterior a Atual" -d ./5-results/SMF-5535 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
    Inserir Data de Inicio |27/JUL/2021|
    Inserir Data Final |27/JUL/2021|
    Inserir Hora|10|
    Inserir Minutos|45|
    Clicar Botao |Salvar|
    Insere Texto Evolucao|Teste Evolucao com Data de Referencia Anterior a Atual|
    Clicar Botao |Assinar|
    Validador |POP-UP Evolucao|

SMF-5536:Impedir a Criacao de Evolucao com Data de Referencia Anterior a Atual
# robot -v browser:chrome -t "SMF-5536:Impedir a Criacao de Evolucao com Data de Referencia Anterior a Atual" -d ./5-results/SMF-5536 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5536:Impedir a Criacao de Evolucao com Data de Referencia Anterior a Atual" -d ./5-results/SMF-5536 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
    Insere Data Por Texto Anterior a 7 Dias    ## Obs: Preenchimento somente por texto, calendário não permite preenchimento automático ##
    Inserir Hora|08|
    Inserir Minutos|00|
    Validador |Campo Invalido|

SMF-5609:Criar Evolucao com Assinatura Digital Configurada

SMF-5610:Criar Evolução Deixando Assinatura Digital Pendente

SMF-5674:Buscar Evolucao no Historico
# robot -v browser:chrome -t "SMF-5674:Buscar Evolucao no Historico" -d ./5-results/SMF-5674 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5674:Buscar Evolucao no Historico" -d ./5-results/SMF-5674 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Historico|
    Pesquisa Historico Por Data, Prestador, Especialidade

SMF-5849:Nao Permitir Criar Evolucao com Data de Referencia Futura
# robot -v browser:chrome -t "SMF-5849:Nao Permitir Criar Evolucao com Data de Referencia Futura" -d ./5-results/SMF-5674 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5849:Nao Permitir Criar Evolucao com Data de Referencia Futura" -d ./5-results/SMF-5674 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
    Insere Data Futura Por Texto 
    Inserir Hora|06|
    Inserir Minutos|00|
    Validador |Campo Invalido|

SMF-5920:Impedir a Criacao de Evolucao com Data de Referencia Anterior ao Atendimento
# robot -v browser:chrome -t "SMF-5920:Impedir a Criacao de Evolucao com Data de Referencia Anterior ao Atendimento" -d ./5-results/SMF-5920 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-5920:Impedir a Criacao de Evolucao com Data de Referencia Anterior ao Atendimento" -d ./5-results/SMF-5920 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Novo|
    Insere Data Anterior Do Atendimento Por Texto 
    Inserir Hora|12|
    Inserir Minutos|00|
    Validador |Campo Invalido|

SMF-6015:Imprimir Evolucao Cancelada
# robot -v browser:chrome -t "SMF-6015:Imprimir Evolucao Cancelada" -d ./5-results/SMF-6015 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
# robot -v browser:firefox -t "SMF-6015:Imprimir Evolucao Cancelada" -d ./5-results/SMF-6015 "3-tests/PRONTUARIO ELETRONICO/MVPEP_TEMA_EVOLUCAO.robot"
    Seleciona Item |APARTAMENTO - UNID 01| Menu Vertical
    Selecionar o paciente ''@nprint
    Clicar no Menu |Evolução Tema|@nprint
    Clicar Botao |Historico|
    Seleciona Data do Historico
    Seleciona Historico
    Clicar Botao |Imprimir|
    Valida Impressao
