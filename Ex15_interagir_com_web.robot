*** Settings ***
Library              SeleniumLibrary
Test Setup           Abrir o Browser
Test Teardown        Fechar o Browser


*** Test cases ***

Interagir com uma pagina web
     Sleep     02s

*** Keywords ***
Abrir o Browser
    Open Browser    https://google.com.br  chrome  
Fechar o Browser
    Close Browser