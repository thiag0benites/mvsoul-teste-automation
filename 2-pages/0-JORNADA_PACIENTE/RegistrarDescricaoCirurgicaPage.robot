##################################################################################################################################
# Autor: Gabriel Passos
# Decrição: Elementos e metodos da página de Registrar Descrição Cirurgica
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource          ../../Config.robot

*** Variable ***
### Elementos da Pagina de Registrar Descrição Cirurgica
${inputAvisoCirurgia}            id=inp:cdAvisoCirurgia
${inputDtInicioCirurgia}         id=inp:dtInicioCirurgia
${inputDtFimCirurgia}            id=inp:dtFimCirurgia
${inputCidPreCirurgia}           id=inp:cdCid
${inputCidPosCirurgia}           id=inp:cdCidFinal
${inputDescCirurgia}             id=inp:dspDsCirurgia
${textoPadrao}                   xpath=//div[@data-member='DS_CIRURGIA_TEXTO_PADRAO']
${btnNovadescricao}              xpath=//button[@data-member='BTN_NOVA_DESCRICAO']
${btnMeusTextos}                 xpath=//button[@data-member='BTN_CARREGAR_DESCRICAO_PADRAO']
${btnRetornarDescr}              xpath=//button[@data-member='BTN_CANCELAR']
${btnRiscos}                     xpath=//button[@data-member='BTN_RISCOS']
${btnIntercorrencias}            xpath=//button[@data-member='BTN_INTERCORRENCIAS']
${btnOrteseProtese}              xpath=//button[@data-member='BTN_ORTESE_PROTESE']
${btnAtoAnestesico}              xpath=//button[@data-member='BTN_ATO_ANESTESICO']
${btnAchadosCirurgicos}          xpath=//button[@data-member='BTN_ACHADOS_CIRURGICOS']
${txtDescrComplementar}          id=inp:dsComplementar
${btnSalvarDescr}                xpath=(//button[@data-member='BTN_SALVAR'])[2]
${btnRetornarComplem}            xpath=(//button[@data-member='BTN_CANCELAR'])[2]
${btnConcluirDescr}              xpath=//button[@data-member='BTN_CONCLUIR_DESCRICAO']
${btnLiberaAviso}                id=inp:snLiberaAviso_btn

