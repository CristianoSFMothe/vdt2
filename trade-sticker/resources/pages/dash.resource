*** Settings ***
Documentation        Dashboard Page

Library              Browser

*** Keywords ***
User Logged In
    ${HEADER_TITLE}     
    ...                Set Variable     
    ...                Aquela figurinha incrível a um clique de distância.

    Get Text           css=.header-content strong    equal     ${HEADER_TITLE}


Search User
    [Arguments]        ${TARGET}
    Fill Text          input[placeholder^=Busque]    ${TARGET}
    Click              css=button >> text=Buscar

Select Sticker
    [Arguments]        ${NAME}
    Click              xpath=//img[@alt="${NAME}"]/..

Get In Touch
    Click             css=button >> text=Entrar em contato

Whatsapp Sticker Message
    [Arguments]         ${STICKER_NAME}

    ${EXPECT_MESSAGE}       Set Variable  
    ...    Oi, achei o seu contato no Trade Sticker. 
    ...    Estou interessado(a) na figurinha do ${STICKER_NAME}, bora negociar?
    Switch Page    NEW
    Wait For Elements State    css=p >> text=${EXPECT_MESSAGE}        visible        5000