*** Settings ***
Documentation       Primeiro teste em robot framework

Library             SeleniumLibrary
Library             DebugLibrary

Test Setup          Abrir navegador
Test Teardown       Fechar navegador
*** Variables ***
${SiteParaAcesso}       http://gmail.com
${SLOGAN}               Faça mais com o Gmail. Agora, integrado com o Google Chat, Google Meet e muito mais, tudo num só lugar.


*** Test Cases ***
Cenário de teste 01: Acesso ao gmail
    Inserir o site no campo de pesquisa "http://www.gmail.com"
    Realizar pesquisa através do navegador
    Validar acesso a página do Gmail


*** Keywords ***
#AS KEYWORDS DEVEM POSSUIR A MESMA DECRIÇÃO DO STEP DE TESTE

Abrir navegador
    [Tags]    @acesso1
    Open Browser    http://google.com/    chrome
    Sleep    10
    Log To Console    ${EMPTY}

Inserir o site no campo de pesquisa "http://www.gmail.com"
    [Tags]    @acesso2
    Input Text    css=input[name=q][title="Pesquisar"]    ${SiteParaAcesso}
    Sleep    10
    Log To Console    ${EMPTY}

Realizar pesquisa através do navegador
    Sleep    10
    Click Element    css=.CqAVzb lJ9FBC
    Log To Console    ${EMPTY}

Validar acesso a página do Gmail
    Get Text    .feature__chapter__body feature__chapter__body--long
    Log To Console    ${EMPTY}

Fechar navegador
    Close Browser
