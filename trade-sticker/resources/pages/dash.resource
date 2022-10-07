*** Settings ***
Documentation        Dashboard Page

Library              Browser

*** Keywords ***
User Logged In
    ${HEADER_TITLE}     
    ...                Set Variable     
    ...                Aquela figurinha incrível a um clique de distância.

    Get Text           css=.header-content strong    equal     ${HEADER_TITLE}