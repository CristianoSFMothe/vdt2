*** Settings ***
Library   Browser

*** Variables ***
${URL_HOME}            https://trade-sticker-dev.vercel.app/
${SLOGAN}              Conectando colecionadores de figurinhas da copa.

*** Test Cases ***
Deve validar o slogan da home page
    New Browser         headless=False
    New Page            ${URL_HOME}
    Get Text            .logo-container h2    contains    ${SLOGAN}
    Take Screenshot