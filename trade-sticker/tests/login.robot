*** Settings ***
Documentation          Login tests

Library                Browser

*** Variables ***
${URL_HOME}            https://trade-sticker-dev.vercel.app/
${INPUT_EMAIL}         css=input[name=email]
${INPUT_PASSWORD}      css=input[name=password]
${BTN_ENTRAR}          css=button >> text=Entrar
${HEADER_TITLE}        Aquela figurinha incrível a um clique de distância.
# ${BTN_ENTRAR}        xpath=//button[text()="Entrar"]

*** Test Cases ***
Deve loga com sucesso
    New Browser        headless=False
    New Page           ${URL_HOME} 
    Fill Text          ${INPUT_EMAIL}        papito@gmail.com
    Fill Text          ${INPUT_PASSWORD}     vaibrasil
    Click              ${BTN_ENTRAR}
    Get Text           css=.header-content strong    equal     ${HEADER_TITLE}
   