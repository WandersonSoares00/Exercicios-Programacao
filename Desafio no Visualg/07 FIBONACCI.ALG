algoritmo "Fibonacci"
//Desenvolva um aplicativo que tenha um procedimento chamado
//Fibonacci() que recebe um ?nico valor inteiro como par?metro, indicando quantos
//termos da sequ?ncia ser?o mostrados na tela. O seu procedimento deve receber
//esse valor e mostrar a quantidade de elementos solicitados.
var
   termos: inteiro
procedimento Fibonacci(n: inteiro)
var t1, t2, i, tn: inteiro
inicio
   t2 <- 0
   t1 <- 1
   se  n = 0 entao
       escreva(">> ")
   senao
      se n = 1 entao
         escreva(t2, " >> ")
      senao
         escreva(t2, " >> ", t1, " >> ")
         para i <- 3 ate n faca
            tn <- t1 + t2
            escreva(tn, " >> ")
            t2 <- t1
            t1 <- tn
         fimPara
      fimSe
   fimSe
fimProcedimento
inicio
      escreval("Informe quantos termos da sequencia fibonacci a ser exibida: ")
      leia(termos)
      Fibonacci(termos)
      escreval("FIM")
fimalgoritmo

