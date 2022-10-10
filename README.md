
![GitHub](https://img.shields.io/github/license/CristianoSFMothe/vdt2) 
![Languege](https://img.shields.io/github/languages/top/CristianoSFMothe/vdt2)
![Languege](https://img.shields.io/github/languages/count/CristianoSFMothe/vdt2)


# Viver de Teste 2.ª Temporada

<h1 align="left">
    <img src="https://github.com/rubenspaiva/vdt-season1-marvel-api/blob/main/.github/logo-stiker.svg" width="250px">
</h1>


# Trade Sticker

## 🔖 Requisitos funcionais

### Slogan (slogan.robot)

- [X] Deve validar o slogan da home page [tag: slogan]

![robotframework-browser-screenshot-10](https://user-images.githubusercontent.com/68359459/194892050-c911dfe8-014e-4140-a23b-202d62230267.png)

### Login (login.robot)

- [X] Não deve logar sem inserir email e senha [tag: no_email_pass]

![robotframework-browser-screenshot-1](https://user-images.githubusercontent.com/68359459/194892915-85f83828-6074-480c-aae0-dc9742a6b0ed.png)

- [X] Não deve logar usando somente email [tag: no_pass]

![robotframework-browser-screenshot-2](https://user-images.githubusercontent.com/68359459/194892845-80852117-e79d-4fea-9731-8101bebe9cf3.png)


- [X] Não deve logar usando somente senha [tag: no_email]

![robotframework-browser-screenshot-3](https://user-images.githubusercontent.com/68359459/194892788-5b6633f1-7120-4303-bd19-bfd491ce5e49.png)

- [X] Não deve logar usando email inválido e senha válida [tag: inv_email]

![robotframework-browser-screenshot-4](https://user-images.githubusercontent.com/68359459/194893146-3c03ecc7-7421-490b-9a67-0b62c72f1d13.png)

- [X] Não deve logar usando email válido e senha inválida [tag: inv_pass]
- 
![robotframework-browser-screenshot-5](https://user-images.githubusercontent.com/68359459/194893206-ba439c73-ec2d-4710-bb41-c11ab22a9740.png)


- [X] Deve logar usando email e senha válidos [tag: login_success]

![robotframework-browser-screenshot-6](https://user-images.githubusercontent.com/68359459/194893281-6f66920c-3984-4c97-8a5d-e6d813bbcd82.png)


| campos  | descrição                             | tipo     | obrigatório |
| ------  | :------------------------------------ | -------- | ----------- |
| email   | email do usuário                      | texto    | sim         |
| senha   | senha do usuário                      | texto    | sim         |
| checkbox| checkbox lembrar dados                | checkbox | não         |

### Busca de Figurinhas (search_sticker.robot)

- [X] Deve retornar uma lista de usuários e suas figurinhas [tag: no_sticker]
- [X] Deve retornar os usuários que possuem uma figurinha específica [tag: sticker]
- [X] Deve retornar página de erro ao buscar figurinha não cadastrada [tag: inv_sticker]

| campos  | descrição                             | tipo     | obrigatório |
| ------  | :------------------------------------ | -------- | ----------- |
| textbox | caixa de pesquisa                     | texto    | não         |

### Negociação de Figurinhas (trade_sticker.robot)

- [X] Deve poder negociar com um usuário [tag: trade_user]
- [X] Deve poder negociar uma figurinha específica com um usuário [tag: trade_sticker]

## 🚀 Tecnologias

- [Robot] - framework de testes automatizados

## 👨🏻‍💻 Como executar o projeto

[Node.js](https://nodejs.org/) v16 ou superior para executar.

[Python](https://www.python.org/downloads/) 3.1.7 ou superior para executar.

Execute os comandos abaixo para instalar das dependências do projeto e execução dos testes:

```sh
pip install robot framework
pip install robotframework-browser
rfbrowser init
cd trade-sticker
robot -d ./logs/ tests/ 
```

## 📝 Sugestões de Melhorias

Segue documento no drive mostrando algumas sugestões de melhorias: [Documento de Melhorias](https://docs.google.com/document/d/1En2Gn2OC3t3Em0N2W7ztmQnsxbUjddfir8wAjmeFwps/edit#)

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

![Captura de tela de 2022-10-10 11-42-07](https://user-images.githubusercontent.com/68359459/194892459-703d7ff5-3e7b-441d-a1b9-47feec13aaf1.png)





Layout feito com 💜&nbsp;por [Fernando Papito](https://www.linkedin.com/in/papitoio/) 👋&nbsp;e adaptado por [Cristiano Ferreira Mothe](https://www.linkedin.com/in/cristiano-da-silva-ferreira/)
