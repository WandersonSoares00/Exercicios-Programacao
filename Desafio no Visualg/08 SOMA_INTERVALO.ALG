algoritmo "SomaIntervalo"
//Desenvolva um algoritmo que leia dois valores pelo teclado e passe esses
//valores para um procedimento Somador() que vai calcular e mostrar a soma entre
eles.
var
   v1, v2, s: inteiro
funcao SuperSomador(n1, n2: inteiro): inteiro
var
   i, soma: inteiro
inicio
      soma <- 0
      para i <- n1 ate n2 faca
           soma <- i + soma
           escreva(i, " +")
      fimPara
      retorne soma
fimFuncao
inicio
      escreval("Entre dois inteiros, o primeiro deve ser menor que o segundo: ")
      leia(v1, v2)
      se v1 < v2 entao
         s <- SuperSomador(v1, v2)
         escreva(" 0 = ", s)
      senao
           escreva("Valores invalidos.")
      fimSe
fimalgoritmo
