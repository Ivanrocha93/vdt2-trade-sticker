# Projeto em Robot Framework com Playwright construído na segunda temporada do viver de testes - QAcademy

## 🔖 Requisitos funcionais

### Slogan.robot

- [X] Deve validar o slogan da home page 

### Login.robot

- [X] Deve logar com sucesso 
- [X] Não deve logar com email incorreto 
- [X] Não deve logar com senha incorreta
- [X] Deve exibir notificação toaster se a senha não for preenchida
- [X] Deve exibir notificação toaster se o email não for preenchido
- [X] Deve exibir notificação toaster se o email e a senha não forem preenchidos

| Campos   | Descrição                             | Tipo     | Obrigatório |
| ------   | :------------------------------------ | -------- | ----------- |
| E-mail   | E-mail do usuário                     | E-mail   | Sim         |
| Password | Password do usuário                   | Password | Sim         |
| Checkbox | Checkbox lembrar meus dados           | Checkbox | Não         |

### Remember_me.robot

- [X] Deve manter os campos email e senha preenchidos após deslogar 

| Campos   | Descrição                             | Tipo     | Obrigatório |
| ------   | :------------------------------------ | -------- | ----------- |
| E-mail   | E-mail do usuário                     | E-mail   | Sim         |
| Password | Password do usuário                   | Password | Sim         |
| Checkbox | Checkbox lembrar meus dados           | Checkbox | Não         |

### Trade.robot

- [X] Deve negociar a figurinha do Neymar Legends 
- [X] Deve exibir página de erro da funcionalidade buscar e depois voltar


| Campos  | Descrição                             | Tipo     | Obrigatório |
| ------  | :------------------------------------ | -------- | ----------- |
| Input   | Campo de buscar figurinhas            | Text     | Não         |

 



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

---

Feito com base no modelo README.MD do [Fernando Papito](https://github.com/weareqacademy/curso-k6-basico/blob/main/README.md) e [Rubens Paiva](https://github.com/rubenspaiva/vdt2-trade-sticker/blob/main/Readme.md)
