##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Métodos para geração de dados pessoa física.
##################################################################################################################################
import random
from unidecode import unidecode
 
def gerar_cpf():                                                        
    cpf = [random.randint(0, 9) for x in range(9)]                              
                                                                                
    for _ in range(2):                                                          
        val = sum([(len(cpf) + 1 - i) * v for i, v in enumerate(cpf)]) % 11      
                                                                                
        cpf.append(11 - val if val > 1 else 0)                                  
                                                                                
    return '%s%s%s.%s%s%s.%s%s%s-%s%s' % tuple(cpf)

def tira_acentos(texto):
    return unidecode(texto)