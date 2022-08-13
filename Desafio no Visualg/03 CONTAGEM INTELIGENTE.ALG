algoritmo "Contagem inteligente"
//Desenvolva um algorítmo de contagem inteligente, o programa deverá interpretar se o usuário deseja
//Uma contagem regressiva ou progressiva de acordo com as entradas de início e fim da contagem
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
