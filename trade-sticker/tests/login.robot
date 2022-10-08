*** Settings ***
Documentation          Login tests

Resource               ../resources/main.resource     

Test Setup             Start Test
Test Teardown          Finish Test
  

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
    
    
   