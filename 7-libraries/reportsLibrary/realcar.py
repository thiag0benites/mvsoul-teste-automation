from selenium import webdriver
# from selenium.webdriver.common.keys import Keys
# from selenium.webdriver.common.action_chains import ActionChains
import time
from robot.libraries.BuiltIn import BuiltIn

def realcar_elemento_execucao(localizador):
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    driver = seleniumlib.driver

    if localizador.find("id") != -1:
        localizador = localizador.replace("id=", "")
        ele = driver.find_element_by_id(localizador)
    elif localizador.find("name") != -1:
        localizador = localizador.replace("name=", "")
        ele = driver.find_element_by_name(localizador)
    elif localizador.find("xpath") != -1:
        localizador = localizador.replace("xpath=", "")
        ele = driver.find_element_by_xpath(localizador)
    elif localizador.find("link") != -1:
        localizador = localizador.replace("link=", "")
        ele = driver.find_element_by_link_text(localizador)
    elif localizador.find("partial_link") != -1:
        localizador = localizador.replace("partial_link=", "")
        ele = driver.find_element_by_partial_link_text(localizador)
    elif localizador.find("tag_name") != -1:
        localizador = localizador.replace("tag_name=", "")
        ele = driver.find_element_by_tag_name(localizador)
    elif localizador.find("class") != -1:
        localizador = localizador.replace("class=", "")
        ele = driver.find_element_by_class_name(localizador)
    elif localizador.find("css") != -1:
        localizador = localizador.replace("css=", "")
        ele = driver.find_element_by_css_selector(localizador)

    original_style = ele.get_attribute('style')

    for i in range(2):
        driver.execute_script("arguments[0].setAttribute('style', arguments[1]);", ele, "border: 3px solid red;")
        time.sleep(0.150)
        driver.execute_script("arguments[0].setAttribute('style', arguments[1]);", ele, original_style)
        time.sleep(0.150)

def realcar_elemento_relatorio(localizador):
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    driver = seleniumlib.driver

    if localizador.find("id") != -1:
        localizador = localizador.replace("id=", "")
        ele = driver.find_element_by_id(localizador)
    elif localizador.find("name") != -1:
        localizador = localizador.replace("name=", "")
        ele = driver.find_element_by_name(localizador)
    elif localizador.find("xpath") != -1:
        localizador = localizador.replace("xpath=", "")
        ele = driver.find_element_by_xpath(localizador)
    elif localizador.find("link") != -1:
        localizador = localizador.replace("link=", "")
        ele = driver.find_element_by_link_text(localizador)
    elif localizador.find("partial_link") != -1:
        localizador = localizador.replace("partial_link=", "")
        ele = driver.find_element_by_partial_link_text(localizador)
    elif localizador.find("tag_name") != -1:
        localizador = localizador.replace("tag_name=", "")
        ele = driver.find_element_by_tag_name(localizador)
    elif localizador.find("class") != -1:
        localizador = localizador.replace("class=", "")
        ele = driver.find_element_by_class_name(localizador)
    elif localizador.find("css") != -1:
        localizador = localizador.replace("css=", "")
        ele = driver.find_element_by_css_selector(localizador)

    original_style = ele.get_attribute('style')
    driver.execute_script("arguments[0].setAttribute('style', arguments[1]);", ele, "border: 3px solid red;")