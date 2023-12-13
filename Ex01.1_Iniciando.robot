*** Comments ***

Primeiro exemplo.

Estruturando um teste,
Este exemplo seria para abrir um navegador, maximizar, e fechar
    como mostram as etapas do cenário de teste 01

*** Settings ***

Documentation    Iniciando o primeiro exemplo sobre Robot Framework.
Library          SeleniumLibrary    timeout=00:00:05
Library          DateTime
Library          Dialogs
Library          Collections

*** Test Cases ***
Cenário 01: Acessar o site do projeto                       #Título do teste.
    Abrir navegador na url padrão do projeto                #Passo 1 - Instrução 1
    Maximizar navegador                                     #Passo 2 - Instrução 
    Fechar navegador                                        #Passo 3 - Instrução 

*** Keywords ***
Abrir navegador na url padrão do projeto                   #Ação - Explicação 1
    Open Browser    https://www.demoblaze.com    chrome
Maximizar navegador                                        #Ação - Explicação 2
    Maximize Browser Window
Fechar navegador                                           #Ação - Explicação 3
    Close Browser