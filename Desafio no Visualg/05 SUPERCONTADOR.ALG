algoritmo "SuperContador"
//Desenvolva um algoritmo que tenha tr?s op??es para o usu?rio: contar de 1 at? 10,
//contar de 10 at? 1 e sair do programa. O programa dever? ser executado at? que a op??o sair
//seja informada.
var
   opc, cont: inteiro
inicio
   repita
         se opc = 1 entao
            para cont <- 1 ate 10 faca
                 escreva(cont, " ,")
            fimPara
            escreva(" Fim")
         senao
              se opc = 2 entao
                 para cont <- 10 ate 1 passo -1 faca
                      escreva(cont, " ,")
                 fimPara
                 escreva(" Fim")
              fimSe
         fimSe
         escreval()
         escreval("Escolha a opcao: ")
         escreval("[ 1 ]: Contar de 1 ate 10.")
         escreval("[ 2 ]: Contar de 10 ate 1.")
         escreval("[ 3 ]: Sair.")
         leia (opc)
   ate (opc = 3)
fimalgoritmo
