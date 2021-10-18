from selenium import webdriver
# from selenium.webdriver.common.keys import Keys
# from selenium.webdriver.common.action_chains import ActionChains
import time
from robot.libraries.BuiltIn import BuiltIn

def elemento_visivel(localizador):
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

    return ele.is_displayed()

def get_class(localizador):
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    driver = seleniumlib.driver

    try:
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

        classe = ele.get_attribute("class")
        return classe
    except:
        classe = None