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
		
		escreva("\nLogin: ")
		leia(login)
		escreva("\nSenha: ")
		leia(senha)
		
		enquanto(tentativa < 3)
		{	
			escreva("\nLogin: ")
			leia(login)
			escreva("\nSenha: ")
			leia(senha)
			
			se(login != usuarioCadastrado ou senha != senhaCadastrada)
			{
				escreva("Cadastro não identificado. \n")
				tentativa++
			}
			senao
			{
				escreva("Olá, ", usuarioCadastrado, " !\n")
				escreva("Sua senha é ", senhaCadastrada, "\n")
				pare
			}
		}
		se(tentativa == 3)
		{
			escreva("\nUsuário temporariamente bloqueado por exceder o número de tentativas.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 954; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */