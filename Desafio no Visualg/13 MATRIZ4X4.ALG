Algoritmo "Mstriz4x4"
// Faça um algorítmo que pergunte ao usuário o que ele deseja ver em uma matriz de quarta ordem
//As opções devem ser: matriz inteira, diagonal principal, triângulo superior e inferior
//Além dessas, deve haver uma opção de saída do programa.
Var
   mat: vetor[1..4, 1..4] de inteiro
   i, j, opc, cont, aux: inteiro
Inicio
      para i <- 1 ate 4 faca
           para j <- 1 ate 4 faca
                aleatorio on
                leia(mat[i, j])
                aleatorio off
           fimPara
      fimPara
      limpaTela

      enquanto Verdadeiro faca

               escreval("[ 1 ]: Ver a matriz completa")
               escreval("[ 2 ]: Ver a diagonal principal da matriz")
               escreval("[ 3 ]: Ver o triangulo superior da matriz")
               escreval("[ 4 ]: Ver o triangulo inferior da matriz")
               escreval("[ 5 ]: Sair")
               escreval("Digite a opcao que voce deseja: ")
               leia(opc)
               limpaTela
               escolha opc
                           caso 1
                                para i <- 1 ate 4 faca
                                     para j <- 1 ate 4 faca
                                          escreva(mat[i, j]:4)
                                     fimPara
                                     escreval
                                fimPara
                           caso 2
                                para i <- 1 ate 4 faca
                                     para j <- 1 ate 4 faca
                                          se i = j entao
                                             escreva(mat[i, j]:4)
                                          fimSe
                                     fimPara
                                     escreval
                                     escreva("":4 * i)
                                fimPara
                                escreval
                           caso 3
                                cont := 0
                                para i <- 1 ate 4 faca
                                     cont := cont + 1
                                     para j <- cont ate 4 faca
                                          escreva(mat[i, j]:4)
                                     fimPara
                                     escreval
                                     escreva("":4 * cont)
                                fimPara
                                escreval
                           caso 4
                                cont := 1
                                para i <- 1 ate 4 faca
                                     para j <- 1 ate cont faca
                                          escreva(mat[i, j]:4)
                                     fimPara
                                     cont := cont + 1
                                     escreval
                                fimPara
                           caso 5
                                escreval("Fechando o programa...")
                                interrompa
                           outroCaso
                                    escreval("Opcao invalida.")
               fimEscolha
      fimEnquanto
Fimalgoritmo