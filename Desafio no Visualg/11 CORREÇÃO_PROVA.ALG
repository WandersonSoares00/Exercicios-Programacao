algoritmo "CorreçãoProva"
//Faça um programa que receba o gabarito de uma prova e faça a correção da prova de três alunos
//mostrando no final seus nomes e seuas respectivas notas. Considere uma prova de 5 questões e
//informe a média da turma no final.
var
   gabarito: vetor[1..5] de caractere
   alunos: vetor[1..3] de caractere
   respostas: vetor[1..5] de caractere
   notas: vetor[1..3] de inteiro
   i, j, acertos, sumNotas: inteiro
inicio
      escreval("-----------------------------")
      escreval("         GABARITO            ")
      escreval("-----------------------------")
      para i <- 1 ate 5 faca
         escreva("Questao ", i, " : ")
         leia(gabarito[i])
      fimPara
      limpaTela
      
      escreval("-----------------------------")
      escreval("           ALUNOS            ")
      escreval("-----------------------------")
      para i <- 1 ate 3 faca
           escreva("Nome do aluno ", i, ": ")
           leia(alunos[i])
           para j <- 1 ate 5 faca
                escreva("Resposta da questao ", j, ": ")
                leia(respostas[j])
                se Maiusc(respostas[j]) = Maiusc(gabarito[j]) entao
                   acertos <- acertos + 1
                fimSe
           fimPara
           notas[i] <- acertos * 2
           sumNotas <- sumNotas + notas[i]
           acertos <- 0
      fimPara
      limpaTela
      
      escreval("-----------------------------")
      escreval("            NOTAS            ")
      escreval("-----------------------------")
      para i <- 1 ate 3 faca
           escreval(alunos[i]:10, "---------- ", notas[i])
      fimPara
      escreval("Media final da turma: ", (sumNotas / 3):4:1)
fimalgoritmo
