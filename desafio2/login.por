programa
{
	
	funcao inicio()
	{
		cadeia usuarioCadastrado, login, senhaCadastrada,senha
		escreva("Página de cadastro \n")
		escreva("_____________________")
		escreva("\nLogin: ")
		leia(usuarioCadastrado)
		escreva("\nSenha: ")
		leia(senhaCadastrada)

		escreva("\nCadastro efetuado com sucesso.\n")
		escreva("_________________________________")

		inteiro tentativa
		tentativa = 0
		enquanto(tentativa < 3)
		{
			escreva("Login: ")
			leia(login)
		}
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 467; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */