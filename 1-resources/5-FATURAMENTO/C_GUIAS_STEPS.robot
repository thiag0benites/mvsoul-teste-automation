##################################################################################################################################
# Autor: Marcos Costa
# Descrição: 
##################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador

Resource                    ../../2-pages/5-FATURAMENTO/C_GUIAS_PAGE.robot

*** Keywords ***

# Informa na Tela Exportacao Producao BPA <Competencia> |${VlCompet}| <Remessa> |${VlReme}| <Tp Consi> |${VlConsis}| Msg1 |${MgsVerif}| Msg2 |${MgsVerif}|
#     Validar Acesso a Tela |Exportação da Produção BPA|
#     Click no Item    ${BtCompA}  
#     Clicar no Campo e Preencher Informacao    ${BtCompC}    ${BtCompC}    ${VlCompet}
    