algoritmo "OrdenaVetor"
//Crie uma l?gica que preencha um vetor de 10 posi??es com n?meros
//aleat?rios (entre 0 e 99) gerados pelo computador. Logo em seguida,
//coloque o vetor em ordem crescente, mostrando no final os valores ordenados
var
   v: vetor[1..10] de inteiro
   i, j, temp: inteiro
inicio
   para i<- 1 ate 10 faca
      aleatorio on //Execute no visualg com os aleat?rios entre 0 e 99
      leia(v[i])
      aleatorio off
      limpaTela
   fimPara
   //Mostra o vetor formado
   para i<- 1 ate 10 faca
      escreva("[", v[i], " ]")
   fimPara
   escreval //Pula a linha
   //Ordena??o
   para i <- 1 ate 10 faca
        para j <- i + 1 ate 10 faca
             se v[i] > v[j] entao
                temp <- v[j]
                v[j] <- v[i]
                v[i] <- temp
             fimSe
        fimPara
   fimPara
   escreval("vetor ordenado:")
   para i <- 1 ate 10 faca
        escreva("[", v[i], " ] ")
   fimPara
fimalgoritmo
