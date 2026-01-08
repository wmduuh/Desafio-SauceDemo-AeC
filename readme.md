# Desafio SauceDemo - AeC

Este projeto foi feito para o desafio da vaga de Analista de Testes. O foco foi automatizar a compra de uma **Jaqueta** no site [SauceDemo](https://www.saucedemo.com/), passando pelo login, carrinho e finalização do pedido.

## Inspiração no ToLogado
Como estou começando na automação agora, me baseei na lógica do **ToLogado** que usamos na AeC. 
* O ToLogado usa o Selenium para entrar em sites e logar sozinho, evitando que o operador precise copiar as senhas.
* Fiz o mesmo aqui com o **Robot Framework**: criei um script que controla o Edge (que já vem no Windows) para fazer todo o processo de compra sem erro humano.

## O que usei
* **Robot Framework:** Para escrever o roteiro do teste.
* **SeleniumLibrary:** Para o robô conseguir mexer no navegador.
* **Edge:** Navegador usado no teste.
* **Requirements.txt:** Lista das ferramentas para facilitar a instalação.

## Organização das pastas
* **SauceDemo/tests/**: Onde está o arquivo `Desafio_SauceDemo - AeC.robot`.
* **.gitignore**: Configurado para o Git ignorar minha pasta `venv-py` e não sujar o repositório.

## Como eu preparei e rodei
Organizei meu ambiente assim para funcionar no meu computador:
1. **Criei o ambiente:**
   `python -m venv venv-py`
2. **Ativei o ambiente na pasta que criei:**
   `cd C:\Desafio-SauceDemo-AeC\venv-py\Scripts`
   `.\activate`
3. **Instale as ferramentas:**
   `pip install -r requirements.txt`
4. **Comando que usei para rodar:**
   ```bash
   robot -d C:\Desafio-SauceDemo-AeC\SauceDemo\results "C:\Desafio-SauceDemo-AeC\SauceDemo\tests\Desafio_SauceDemo - AeC.robot"