algoritmo "PartidasValidas"
//Faça um programa que leia 3 times de futebol e mostre as diferentes maneiras de formar jogos
//(sem repetição) entre eles
var
   times: vetor[1..3] de caractere
   i, j: inteiro
inicio
      para i <- 1 ate 3 faca
         escreva("Informe o ", i, "° time: ")
         leia(times[i])
      fimPara
      limpaTela
      escreval("Lista de jogos possiveis:")
      para i <- 1 ate 3 faca
           para j <- 1 ate 3 faca
                se j <> i entao
                   escreval(times[i]:15, "[] x [] ", times[j])
                fimSe
           fimPara
      fimPara

fimalgoritmo
