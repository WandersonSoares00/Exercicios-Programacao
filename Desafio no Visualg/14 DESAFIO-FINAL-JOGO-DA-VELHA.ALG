Algoritmo "JogoDaVelha"
//Desenvolva o jogo da velha utilizando uma matriz quadrada de terceira ordem.
Var
   mat: vetor[1..3, 1..3] de caractere
   jogada, continua: caractere
   i, j, cont: inteiro


procedimento tabela(v: caractere)
inicio
      mat[i, j] := v
      escreval("         ", mat[1, 1]:2, "|  ", mat[1, 2]:2, "|  ", mat[1, 3]:2)
      escreval("       +=+=+=+=+=+=+=+")
      escreval("         ", mat[2, 1]:2, "|  ", mat[2, 2]:2, "|  ", mat[2, 3]:2)
      escreval("       +=+=+=+=+=+=+=+")
      escreval("         ", mat[3, 1]:2, "|  ", mat[3, 2]:2, "|  ", mat[3, 3]:2)
fimProcedimento


procedimento jogada_valida(v: caractere)
inicio
      escolha v
      caso "1", "2", "3"
           i := 1
           j := caracpnum(v)
      caso "4", "5", "6"
           i := 2
           j := caracpnum(v) - 3
      caso "7", "8", "9"
           i := 3
           j := caracpnum(v) - 6
      outroCaso
               escreva("opção inválida! tente novamente: ")
               leia(jogada)
               jogada_valida(jogada)
      fimEscolha
      se (mat[i, j] = "x") ou (mat[i, j] = "o") entao
         escreva("opção inválida! tente novamente: ")
         leia(jogada)
         jogada_valida(jogada)
      fimSe
fimProcedimento


funcao venceu(simbolo: caractere): logico
var lin, diag: inteiro
    ganhou: logico
inicio
      ganhou := Falso //Não houve ganhador até que se prove o contrário
//Verifica se existe uma linha, coluna ou diagonais completamente preenchida pelo símbolo x ou o
   //Colunas
   para j <- 1 ate 3 faca
        se (mat[1, j] = simbolo) e (mat[2, j] = simbolo) e (mat[3, j] = simbolo) entao
           ganhou := Verdadeiro
        fimSe
   fimPara
   //Linhas
   para i <- 1 ate 3 faca
        se (mat[i, 1] = simbolo) e (mat[i, 2] = simbolo) e (mat[i, 3] = simbolo) entao
           ganhou := Verdadeiro
        fimSe
   fimPara
   //Testa diagonal principal
   se (mat[1, 1] = simbolo) e (mat[2, 2] = simbolo) e (mat[3, 3] = simbolo) entao
      ganhou := verdadeiro
   fimSe
   //Testa diagonal secundária
   se (mat[1, 3] = simbolo) e (mat[3, 1] = simbolo) e (mat[2, 2] = simbolo) entao
      ganhou := verdadeiro
   fimSe
   retorne ganhou
fimFuncao


funcao empate(): logico
var empatou: logico
inicio
      empatou := Verdadeiro //Houve empate até que se prove o contrário
      para i <- 1 ate 3 faca
           para j <- 1 ate 3 faca
                se (mat[i, j] <> "x") e (mat[i, j] <> "o") entao
                   empatou := Falso
                fimSe
           fimPara
      fimPara
      retorne empatou
fimFuncao


Inicio //Programa principal
      repita
         //Preenchendo a grade
         cont := 0
         para i <- 1 ate 3 faca
              para j <- 1 ate 3 faca
                   cont := cont + 1
                   mat[i, j] := numpcarac(cont)
              fimPara
         fimPara

         tabela("9") //Denote como parâmetro opcinal
         enquanto Verdadeiro faca
            escreva("Escolha um valor para x: ")
            leia(jogada)
            jogada_valida(jogada)
            limpaTela
            tabela("x")
            se venceu("x") entao
               escreval("O jogador do 'x' Venceu")
               interrompa
            fimSe

            se empate() entao
               escreva("Jogo empatado. Deu velha!")
               interrompa
            fimSe

            escreva("Escolha um valor para o: ")
            leia(jogada)
            jogada_valida(jogada)
            limpaTela
            tabela("o")
            se venceu("o") entao
               escreval("O jogador do 'o' Venceu")
               interrompa
            fimse
         fimEnquanto
         enquanto Verdadeiro faca
            escreva("Deseja jogar novamente? [S/N] ")
            leia(continua)
            se (maiusc(continua) = "S") ou (maiusc(continua) = "N") entao
               interrompa
            fimSe
         fimEnquanto
         limpaTela
      ate (maiusc(continua) = "N")
Fimalgoritmo