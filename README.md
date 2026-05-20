# Automação de Testes Web com Robot Framework

## Descrição do Projeto

Projeto de automação de testes web desenvolvido utilizando Robot Framework com SeleniumLibrary.

O objetivo deste projeto é validar funcionalidades do site SauceDemo através de cenários automatizados, aplicando boas práticas de organização, reutilização de código e manutenção.

O projeto foi desenvolvido com foco em aprendizado de automação funcional web, estruturação de testes e utilização de ferramentas utilizadas no mercado.

---

## Tecnologias Utilizadas

* Robot Framework
* SeleniumLibrary
* Python
* Selenium WebDriver
* Google Chrome
* Git e GitHub

---

## Funcionalidades Automatizadas

Os seguintes cenários foram automatizados:

### Login

* Login válido
* Login inválido
* Validação de mensagens de erro

### Carrinho

* Adição de produto ao carrinho
* Validação de produto adicionado

### Checkout

* Preenchimento de dados do usuário
* Continuação do checkout
* Finalização da compra

---

## Estrutura do Projeto

Atualmente o projeto está organizado de forma simples, mantendo os arquivos principais dentro da pasta `saucedemo`.

```txt
saucedemo/
│
├── .gitignore
├── keywords.robot
├── variables.robot
├── log.html
├── report.html
├── output.xml
├── selenium-screenshot-1.png
└── test.robot
```

### Descrição dos Arquivos

| Arquivo           | Responsabilidade                                        |
| ----------------- | ------------------------------------------------------- |
| `test.robot`      | Contém os casos de teste automatizados                  |
| `keywords.robot`  | Contém as Keywords reutilizáveis do projeto             |
| `variables.robot` | Variáveis do projeto, como URL, navegador e credenciais |
| `log.html`        | Relatório detalhado da execução                         |
| `report.html`     | Relatório resumido dos testes                           |
| `output.xml`      | Resultado bruto da execução                             |
| `README.md`       | Documentação do projeto                                 |

```text
saucedemo/
│
├── .gitignore
├── keywords.robot
├── variables.robot
├── log.html
├── report.html
├── output.xml
├── selenium-screenshot-1.png
└── test.robot
```

---

## Organização do Projeto

### test.robot

Contém os cenários de teste automatizados.

### keywords.robot

Contém arquivos reutilizáveis do projeto:

* keywords reutilizáveis
* configurações
  
### variables.robot
variáveis e configurações

### Relatórios

Contém os relatórios gerados automaticamente pelo Robot Framework.

---

## Boas Práticas Aplicadas

Durante o desenvolvimento foram aplicadas boas práticas de automação de testes:

* Separação de responsabilidades
* Reutilização de keywords
* Organização em pastas
* Utilização de variáveis centralizadas
* Escrita legível e padronizada
* Estrutura simples para manutenção futura
* Validações explícitas dos elementos
* Geração de evidências automatizadas

---

## Exemplos de Keywords

### Realizar Login

```robot
Realizar Login Válido
    Input Text    id:user-name    ${USUARIO_VALIDO}
    Input Text    id:password     ${SENHA_VALIDA}
    Click Button    id:login-button
```

### Validar Mensagem de Erro

```robot
Validar Mensagem De Erro
    Element Should Contain
    ...    xpath://h3[@data-test='error']
    ...    Username and password do not match
```

---

## Como Executar o Projeto

### 1. Clonar o repositório

```bash
git clone <URL_DO_REPOSITORIO>
```

### 2. Acessar a pasta do projeto

```bash
cd nome-do-projeto
```

### 3. Instalar as dependências

```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

### 4. Executar os testes

```bash
robot test.robot
```

---

## Relatórios Gerados

Após a execução dos testes, o Robot Framework gera automaticamente:

| Arquivo     | Descrição                                    |
| ----------- | -------------------------------------------- |
| log.html    | Relatório detalhado da execução              |
| report.html | Resumo da execução dos testes                |
| output.xml  | Arquivo bruto utilizado pelo Robot Framework |

---

## Objetivos de Aprendizado

Este projeto foi desenvolvido para praticar:

* Automação de testes web
* Estruturação de projetos Robot Framework
* Localização de elementos HTML
* Fluxos E2E (End-to-End)
* Geração de relatórios
* Utilização de Selenium WebDriver
* Versionamento com Git e GitHub

---

## Autor

Lucas Lemes

* Analista de Dados Júnior
* Estudante de Análise e Desenvolvimento de Sistemas
* Foco em desenvolvimento Backend com C#/.NET e automação de testes
