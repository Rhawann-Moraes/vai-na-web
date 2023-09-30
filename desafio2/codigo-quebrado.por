programa {
  inclua biblioteca Texto --> texto
  inclua biblioteca Util --> u
	cadeia nomeCliente
	cadeia escolhas_cliente[] = {"Escolher"}
	cadeia escolha_bebida[] = {"Vazio" ," "}
	inteiro tamanho_escolhas = 0
	inteiro opMnPrin
	inteiro opPratos
	inteiro opBebidas

  funcao menu_principal(){
    escreva("|       Lanchonete Restaurante VNW       |\n")
    escreva("______________\n")
    escreva("|             Menu Principal             |\n")
    escreva("| 1. PRATO |2. BEBIDAS |3. SAIR/CANCELAR |\n")
    escreva("______________\n")
    leia(opMnPrin)
  }
  

  funcao menu_bebidas(){
    escreva("____________\n")
    escreva("|              Bebidas             |\n")
    escreva("____________\n")
    escreva("|1.Sucos | 2.Refrigerante | 3.Agua |\n")
    escreva("____________\n")
    leia(opBebidas)
  }

  funcao escolhaBebida(){
    inteiro escolher
      u.aguarde(1000)
      limpa()
      escreva("\nGostaria de uma bebiba? 1- SIM ou 2- NAO\n")
      leia(escolher)
      

    escolha(escolher){
      caso 1:
        menu_bebidas()
        escolha(escolher){
          caso 1:
          escolha_bebida[0] = "Suco"
           pare
          caso 2:
          escolha_bebida[0] = "Refrigerante"
            pare
          caso 3:
          escolha_bebida[0] = "Agua"
            pare
         	caso contrario:
            escreva("OPCAO INVALIDA")
           pare 
        }
        pedidoFinalizado()
      pare
      caso 2:
        pedidoFinalizado()
      pare
      caso contrario:
        escreva("OPCAO INVALIDA, TENTE NOVAMENTE!")
        escolhaBebida()
    }
  }

 funcao pedidoFinalizado() {
  limpa()
    escreva("SEU PEDIDO FOI FINALIZADO! VOLTE SEMPRE \n")
    para(inteiro j = 0; j < tamanho_escolhas; j++){
      escreva(" Prato: ", escolhas_cliente[j], "\n Bebida: ", escolha_bebida[j], "\n")

      escreva("\n")
      
    se(escolhas_cliente[0] == "Escolher" e escolha_bebida[0] != "Vazio"){
      escreva("ATE MAIS, VOLTE SEMPRE!!")
    }
  }
}

  funcao inicio() {
    	escreva("Antes de comecar, por favor informe seu nome: ")
    	leia(nomeCliente)
	escreva("\n")

    
      menu_principal()
      enquanto (opMnPrin >= 1 e opMnPrin < 3){
      escolha(opMnPrin){      
        caso 1:
          menu_pratos()
        pare
        caso 2: 
          menu_bebidas()
        pare
        caso 3:
          escreva("\n\n***SAINDO DO MENU RESTAURANTE**\n\n")
        pare
        caso contrario:
          escreva("OPCAO INVALIDA!\n")
          escreva(" ")
          opMnPrin = 0
          
      }
    } 
  }

  funcao menu_pratos(){
    inteiro q = 0
    escreva("____________\n")
    escreva("|          Pratos Principais       |\n")
    escreva("____________\n")
    escreva("|            1.Sushi               |\n")
    escreva("|            2.Macarrao            |\n")
    escreva("|            3.Hamburguer          |\n")
    escreva("|            4.Cachorro quente     |\n")
    escreva("|            5.Sair                |\n")
    escreva("____________\n")
    escreva(nomeCliente, ", escolha o seu prato: ")
    leia(opPratos) 
    limpa()

    faca {    
      escolha(opPratos){      
      caso 1:
        menu_sushi()
      pare
      caso 2:
        menu_macarrao()
      pare
      caso 3:
        menu_hamburguer()
      pare
      caso 4:
        menu_hotdog()
      pare
      caso 5:
        escreva("\n\n***SAINDO DO MENU DE PRATOS**\n\n")
        menu_principal()
      pare
      caso contrario:
        escreva("Opcao Invalida! Tente novamente\n")
        menu_pratos()
        opPratos = 0
      }
    } enquanto (opPratos > 1 e opPratos < 5)
  } 

  funcao menu_hamburguer(){
      inteiro op = 0
      escreva("\n")
      escreva("____________\n")
      escreva("|         Hamburguer               |\n")
      escreva("____________\n")
      escreva("|            1.Carne Bovina        |\n")
      escreva("|            2.Frango              |\n")
      escreva("|            3.Sair                |\n")
      escreva("____________\n")
      leia(op)

    faca {    
      escolha(op){
      caso 1:
        escreva(" Seu hamburguer vem com: Carne Bovina / Cheddar / Alface / Tomate / Ketchup / Maionese")
        escreva("\n \n", "Tudo certo ", nomeCliente, " seu pedido de carne bovina foi anotado")
        escolhas_cliente[tamanho_escolhas] = "Hamburguer com Carne Bovina"
        tamanho_escolhas = tamanho_escolhas + 1
        escolhaBebida()
      pare
      caso 2:
        escreva(" Seu hamburguer vem com: Carne Frango / Cheddar / Alface / Tomate / Ketchup / Maionese")
        escolhaBebida()
        escreva("\n \n", "Tudo certo ", nomeCliente, " seu pedido de frango foi anotado")
        escolhas_cliente[tamanho_escolhas] = "Hamburguer com Carne de Frango"
        tamanho_escolhas = tamanho_escolhas + 1
  
      pare
      caso 3:
        escreva("\n\n***SAINDO DO MENU Hamburguer**\n\n")
        menu_pratos()
      pare
      caso contrario:
       escreva("OPCAO INVALIDA! TENTE NOVAMENTE \n")
       menu_hamburguer()
      }
    } enquanto (op < 1 e op < 3)
  }

  funcao menu_hotdog(){
    inteiro op = 0
    inteiro bebida
      escreva("\n")
      escreva("____________\n")
      escreva("|             HotDog               |\n")
      escreva("____________\n")
      escreva("|       1.Salsicha Tradicional     |\n")
      escreva("|            2.Linguica            |\n")
      escreva("|            3. Sair               |\n")
      escreva("____________\n")
      leia(op)
    faca {    
      escolha(op){
      caso 1:
        escreva("Seu HotDog acompanhara: Salsicha Tradicional, Pao, Queijo, Batata palha, Ketchup, Maionese")
        escreva("\n", "Tudo certo ", nomeCliente, "! seu pedido de hotdog com Salsicha Tradicional foi anotado\n\n")
        escolhas_cliente[tamanho_escolhas] = "Cachorro Quente de Salsicha"
        tamanho_escolhas = tamanho_escolhas + 1
        escolhaBebida()
      pare
      caso 2:
      escreva("Seu HotDog acompanhara: Linguiça, Pao, Queijo, Batata palha, Ketchup, Maionese")
        escreva("\n", "Tudo certo ", nomeCliente, "! seu pedido de hotdog com Linguiça foi anotado.\n\n")
        escolhas_cliente[tamanho_escolhas] = "Cachorro Quente de Lingui�a"
        tamanho_escolhas = tamanho_escolhas + 1
        escolhaBebida()
      pare
      caso 3:
        escreva("\n\n***SAINDO DO MENU HotDog**\n\n")
        menu_pratos()
      pare
      caso contrario:
        escreva("OPCAO INVALIDA! TENTE NOVAMENTE \n")
        menu_hotdog()
        //op = 0
      }
    } enquanto (op < 1 e op < 3)
  }

  funcao menu_macarrao(){
    inteiro op = 0
      escreva("\n")
      escreva("____________\n")
      escreva("|         MACARRAO                 |\n")
      escreva("____________\n")
      escreva("|            1. Espaguete          |\n")
      escreva("|            2. Penne              |\n")
      escreva("|            3. Sair               |\n")
      escreva("____________\n")
      escreva(nomeCliente, ", escolha o seu pedido: ")
      leia(op)

      faca {    
        escolha(op){
        caso 1:
          escreva("Seu macarrao vem com: Macarrao espaguete/ Molho de tomate / Bacon / Cogumelos / Espinafre")
          escreva("\n \n", "Tudo certo ", nomeCliente, " seu pedido de espaguete foi anotado")
          escolhas_cliente[tamanho_escolhas] = "Espaguete"
          tamanho_escolhas = tamanho_escolhas + 1
          escolhaBebida()
        pare
        caso 2:
          escreva("Seu macarrao vem com: Macarrao penne/ Molho pesto / Bacon / Cogumelos / Espinafre")
          escreva("\n \n", "Tudo certo ", nomeCliente, " seu pedido de penne foi anotado")
          escolhas_cliente[tamanho_escolhas] = "Penne"
          tamanho_escolhas = tamanho_escolhas + 1
          escolhaBebida()
        pare
        caso 3:
          escreva("\n\n***SAINDO DO MENU MACARRAO**\n\n")
          menu_pratos()
        pare
        caso contrario:
          escreva("OPCAO INVALIDA! TENTE NOVAMENTE \n")
          menu_macarrao()
        }
      } enquanto (op < -3 e op < 6)
  }

  funcao menu_sushi(){
    inteiro escolhaMenu, escolhaPeixe
    cadeia peixe[2] = {"Atum", "Salmao"}
    cadeia descricaoIngredientes = (", seu sushi com: arroz, nori, legumes e "), descricaoPedidoPronto = (" ficara pronto em instantes.")

	limpa()
    escreva("Os acompanhamentos padrao sao: arroz, nori, legumes e peixe cru.\n\n")
    escreva("____________\n")
    escreva("|              Sushi               |\n")
    escreva("____________\n")
    escreva("|         1. ", peixe[0],"         |\n")
    escreva("|         2. ", peixe[1],"         |\n")
    escreva("|         3. Sair                  |\n")
    escreva("____________\n")
		escreva("\nEscolha o peixe: ")
		leia(escolhaPeixe)

    limpa()
    escolha (escolhaPeixe) {
      caso 1:
        escreva(nomeCliente, descricaoIngredientes, texto.caixa_baixa(peixe[0]), descricaoPedidoPronto)
        escolhas_cliente[tamanho_escolhas] = "Sushi de Atum"
        tamanho_escolhas = tamanho_escolhas + 1
        escolhaBebida()
      pare
      caso 2:
        escreva(nomeCliente, descricaoIngredientes, texto.caixa_baixa(peixe[1]), descricaoPedidoPronto)
        escolhas_cliente[tamanho_escolhas] = "Sushi de Atum"
        tamanho_escolhas = tamanho_escolhas + 1
        escolhaBebida()
      pare
      caso 3:
        menu_pratos()
      pare
      caso contrario:
        escreva("Escolha invalida, por favor, tente novamente com um peixe que esteja disponivel nas opcoes oferecidas.\n\n")
        u.aguarde(4000)
        menu_sushi()
      }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4387; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */