programa
{
	
	funcao inicio()
	{
		cadeia usuarioCadastrado, login, senhaCadastrada,senha, nome, endereco, telefone, dataNascimento
		inteiro idade, ddd
		
		escreva("Página de cadastro \n")
		escreva("_____________________")
		escreva("\nNome completo: ")
		leia(nome)
		escreva("\nIdade: ")
		leia(idade)
		escreva("\nData de Nascimento: ")
		leia(dataNascimento)
		escreva("\nEndereço: ")
		leia(endereco)
		escreva("\nDDD: ")
		leia(ddd)
		escreva("\nTelefone: ")
		leia(telefone)
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
				escreva("\n", nome," ", idade, "anos.\n")
				escreva("Data de nascimento: ", dataNascimento,"\n")
				escreva("Telefone: ", "(", ddd, ")", telefone,"\n")
				escreva("Endereço: ", endereco, "\n")
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
 * @POSICAO-CURSOR = 465; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */