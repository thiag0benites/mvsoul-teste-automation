##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Métodos para interação com objetos desktop
##################################################################################################################################
import time
import pyautogui

def imagem_exist(img, timeout=10):
    flag = False
    cont = 1

    try:
        while cont < timeout:
            cords = pyautogui.locateOnScreen(img, confidence=0.7)
            time.sleep(1)
            cont += 1
            if cords is not None:
                flag = True
                break

        if flag == False:
            raise Exception("*** A imagem " + img + " não foi apresentada!")


    # except ValueError as e:
    except ValueError:
        print(Exception)

def imagem_visivel(img, timeout=60):
    flag = False
    cont = 1

    try:
        while cont < timeout:
            cords = pyautogui.locateOnScreen(img, confidence=0.7)
            time.sleep(1)
            cont += 1
            if cords is not None:
                flag = True
                break

        return flag

    # except ValueError as e:
    except ValueError:
        print(Exception)      

def efetuar_click(img):
    try:
        cords = pyautogui.locateOnScreen(img, confidence=0.7)
        pyautogui.click(cords)
        print("*** Click efetudo em " + img)
    except:
        print("*** Erro ao tentar efetuar o click em " + img)

def digitar_texto(img, texto):
    try:
        cords = pyautogui.locateOnScreen(img, confidence=0.7)
        pyautogui.click(cords)
        pyautogui.typewrite(texto)
        print("*** Texto " + texto + " em " + img)
    except:
        print("*** Erro ao tentar digitar " + texto + " em " + img)


def send_keys():
    """
    Works on Windows/Mac/Linux
    """
    pyautogui.press('tab') #Presses enter
    pyautogui.press('enter') 

    #pyautogui.hotkey('ctrl', 'shift', 'esc') #Performs ctrl+shift+esc
    #pyautogui.typewrite('Hello world!\n', interval=secs_between_keys)  #Useful for entering text, newline is Enter
    #pyautogui.typewrite(['a', 'b', 'c', 'left', 'backspace', 'enter', 'f1'], interval=.4) #A list of 
