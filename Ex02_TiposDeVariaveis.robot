*** Comments ***

*** Settings ***
Documentation       Demonstração dos tipos de variáveis


*** Variables ***
${SIMPLES_STRING}       nome
${SIMPLES_NUMERICA}     1910
${SIMPLES_BOOLEANA}     ${TRUE}
@{LISTA}                [cliente_01]    [produto_02]    [time_03];
&{DICIONARIO}           nome=Bruno    email=teste@teste.com.br    idade=35


*** Test Cases ***
Cenario 01: Apresentando Variavel simples
    Mostre como funciona uma varialvel simples no console

Cenario 02: Apresentando Variavel lista
    Mostre como funciona uma varialvel lista no console

Cenario 03: Apresentando Variavel dicionario
    Mostre como funciona uma varialvel diconario no console


*** Keywords ***
Mostre como funciona uma varialvel simples no console
    log to console    .
    log to console    -------------------------------------------------------
    log to console    Variavel SIMPLES:
    log to console    Sou uma variavel simples, meu conteu é: ${SIMPLES_STRING}
    log to console    Sou uma variavel simples, meu conteu é: ${SIMPLES_NUMERICA}
    log to console    Sou uma variavel simples, meu conteu é: ${SIMPLES_BOOLEANA}
    log to console    ----------------------------------------------------------

Mostre como funciona uma varialvel lista no console
    log to console    .
    log to console    ------------------------------------------------------------
    log to console    Variavel LISTA:
    log to console    Primeiro Cliente ${LISTA}[0]
    log to console    Segundos Cliente ${LISTA}[1]
    log to console    Terceiro Cliente ${LISTA}[2]
    log to console    ------------------------------------------------------------

Mostre como funciona uma varialvel diconario no console
    log to console    .
    log to console    ------------------------------------------------------------
    log to console    Variavel DICIONARIO:
    log to console    Nome do cliente: ${DICIONARIO.nome}
    log to console    E-mail do cliente: ${DICIONARIO.email}
    log to console    Idade do cliente: ${DICIONARIO.idade}
    log to console    ------------------------------------------------------------
