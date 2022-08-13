algoritmo "Jokenp0!"
//Crie um jogo de JoKenPo (Pedra-Papel-Tesoura)
var
   jogada_user, jogada_pc: inteiro
inicio
      escreval("    Bem vindo ao JOKENPO    ")
      escreval("----------------------------")
      escreval("Escolha uma das jogadas a seguir: ")
      escreval(" [ 1 ] : Pedra ")
      escreval(" [ 2 ] : Papel ")
      escreval(" [ 3 ] : Tesoura ")
      escreval("----------------------------")
      escreva("Sua jogada: ")
      leia(jogada_user)
      
      aleatorio on //Acione o gerador de alearórios do visualg para gerar um inteiro entre 1 e 3
      leia(jogada_pc)
      aleatorio off

      se jogada_user = jogada_pc entao
         escreval("EMPATE - Fiz a mesma jogada que voce")
      senao
           se (jogada_user = 1) e (jogada_pc = 3) ou (jogada_user = 2) e (jogada_pc = 1) ou (jogada_user = 3) e (jogada_pc = 2) entao
                escreval("Voce venceu!!! joguei o " , jogada_pc)
           senao
                se (jogada_user = 3) e (jogada_pc = 1) ou (jogada_user = 1) e (jogada_pc = 2) ou (jogada_user = 2) e (jogada_pc = 3) entao
                   escreval("Voce perdeu!!! Joguei o " , jogada_pc)
                senao
                     escreval("Sua jogada foi invalida.")
                fimSe
           fimSe
      fimSe

fimalgoritmo
