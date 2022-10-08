*** Settings ***
Documentation        Login Page

Library              Browser

*** Variables ***
${URL_HOME}            https://trade-sticker-dev.vercel.app/

*** Keywords ***
Go To Login Page
   
    New Page           ${URL_HOME} 

Submite Credenciais
    [Arguments]        ${EMAIL}                     ${PASSWORD}
    Fill Text          css=input[name=email]        ${EMAIL}
    Fill Text          css=input[name=password]     ${PASSWORD}
    Click              css=button >> text=Entrar


Tost Message Should Be
    [Arguments]        ${EXPECT_MESSAGE}
    ${LOCATOR}         
    ...                Set Variable          
    ...                css=.Toastify__toast-body div >> text=${EXPECT_MESSAGE} 

    Wait For Elements State    ${LOCATOR}    visible    3