algoritmo "Contagem inteligente"
//Desenvolva um algor?tmo de contagem inteligente, o programa dever? interpretar se o usu?rio deseja
//Uma contagem regressiva ou progressiva de acordo com as entradas de in?cio e fim da contagem
var
   cont, fim: Inteiro
inicio
      escreval("Informe o comeco da contagem: ")
      leia(cont)
      escreval("Informe o fim da contagem: ")
      leia(fim)
      se fim > cont entao
         enquanto (cont <= fim) faca
                  escreva(cont, " ,")
                  cont <- cont + 1
         fimEnquanto
      senao
           enquanto (cont >= fim) faca
                  escreva(cont, " ,")
                  cont <- cont - 1
         fimEnquanto
      fimSe
      escreva(" ACABOU!")
fimalgoritmo
