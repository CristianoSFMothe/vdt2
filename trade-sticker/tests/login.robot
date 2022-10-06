*** Settings ***
Documentation          Login tests

Library                Browser

*** Variables ***
${URL_HOME}            https://trade-sticker-dev.vercel.app/
${INPUT_EMAIL}         css=input[name=email]
${INPUT_PASSWORD}      css=input[name=password]
${BTN_ENTRAR}          css=button >> text=Entrar
# ${BTN_ENTRAR}        xpath=//button[text()="Entrar"]

  

*** Test Cases ***
Deve loga com sucesso
    [Tags]             login
    Go To Login Page 
    Submite Credenciais        papito@gmail.com              vaibrasil
    User Logged In


Não deve logar com senha incorreta
    [Tags]             inv_pass
    Go To Login Page 
    Submite Credenciais        papito@gmail.com              abc123
    Tost Message Should Be     Credenciais inválidas, tente novamente!
    


*** Keywords ***
Go To Login Page
    New Browser        headless=False
    New Page           ${URL_HOME} 

Submite Credenciais
    [Arguments]        ${EMAIL}              ${PASSWORD}
    Fill Text          ${INPUT_EMAIL}        ${EMAIL}
    Fill Text          ${INPUT_PASSWORD}     ${PASSWORD}
    Click              ${BTN_ENTRAR}

User Logged In
    ${HEADER_TITLE}     
    ...                Set Variable     
    ...                Aquela figurinha incrível a um clique de distância.

    Get Text           css=.header-content strong    equal     ${HEADER_TITLE}


Tost Message Should Be
    [Arguments]        ${EXPECT_MESSAGE}
    ${LOCATOR}         
    ...                Set Variable          
    ...                css=.Toastify__toast-body div >> text=${EXPECT_MESSAGE} 

    Wait For Elements State    ${LOCATOR}    visible    3
   