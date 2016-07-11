Feature: Cadastro, login e cotacao de seguro no site da youse

@youse_cadastro
Scenario Outline: Eu como cliente desejo acessar o site da youse e realizar cadastro.
	Given que eu esteja no "<website>" da youse
	And clique no botao minha conta
	And clique no link de cadasto
	And preencha os campos "<name>", "<user>", "<password>", "<confirmPassword>" e clicar em enviar cadastro
	Then o cadastro sera realizado com sucesso.


Examples:
| 		website			   | 	name	 | 		user		  	  | password |confirmPassword|
| https://www.youse.com.br | joao carlos | joaocarlos@hotmail.com | abcd1234 | 	abcd1234	 |
# A CADA EXECUÇÃO MUDAR O "user" E "name"



@youse_cotacao
Scenario Outline: Eu como cliente desejo acessar o site da youse, navegar nas páginas institucionais e realizar uma cotação de seguro.
	Given que eu esteja no "<website>" da youse
	And clique em seguro residencial e validar se esta na pagina correta
	And acesse a pagina home, clique em seguro auto e validar se esta na pagina correta
	And acesse a pagina home, clique em seguro vida e validar se esta na pagina correta
	And clique no botao minha conta
	And preencha o campo email com dado invalido e clique no botao proximo passo
	And preencha o campo senha com dado invalido e clique em entrar
	Then devera exibir a mensagem de usuario ou senha incorreto
	And preencha o campo email "<userValid>" com dado valido
	And preencha o campo senha "<passwordValid>" com dado valido e clique em entrar
	Then devera exibir a mensagem de login efetuado com sucesso
	And clique no botao cotar seguro auto, preencha os campos "<nameValid>", "<userValid>" e clique no botao sobre o veiculo
	And selecione todos os dados referente ao veiculo e clique em proximo passo, clique em prosseguir, clique em proximo passo
	And preencha o campo nome completo "<nameValid>", cpf "<cpfValid>", todos os campos restante e clique em proximo passo
	And preencha o campo placa veiculo e clique em pagamento
	Then sera apresentada a pagina de pagamento


Examples:
| 		website			   |  			userValid		  | passwordValid |	nameValid   |  cpfValid	  |
| https://www.youse.com.br | EMAILVALIDO!!!!!@hotmail.com | SENHAVALIDA   | NOME VALIDO | XXXXXXXXXXX |
# PARA EXECUTAR O TESTE CORRETAMENTE É NECESSÁRIO PRENCHER OS DADOS DE UM USUÁRIO VÁLIDO, DIGITE APENAS NÚMEROS NO CAMPO "cpfValid" 


