algoritmo "Triangulos"
// Crie um programa que leia o tamanho de tr?s segmentos de reta.
//Analise seus comprimentos e diga se ? poss?vel formar um tri?ngulo com essas retas.
//Caso seja poss?vel formar, mostre o tipo de tri?ngulo que ser? formado:
// - EQUIL?TERO: todos os lados iguais
// - IS?SCELES: dois lados iguais
// - ESCALENO: todos os lados diferentes
var
   a, b, c: real
inicio
      escreval("Informe tr?s segmentos de reta: ")
      leia(a, b, c)
      se (a + b > c) e (a + c > b) e (c + b > a) entao
         escreval("EHH possivel formar triangulos com os segmentos!!!")
         se ((a <> b) ou (b <> c))  e ((a = b) ou (a = c) ou (b = c))entao
            escreval("O tri?ngulo serah isosceles.")
         senao
              se (a = b) e (b = c) entao
                 escreval("O triangulo serah equilatero.")
              senao
                   se (a <> b) e (b <> c) entao
                      escreval("O triangulo formado serah escaleno.")
                   fimse
              fimse
         fimse
      senao
           escreva("Nao eh possivel formar triangulos com os segmentos citados.")
      fimse
fimalgoritmo
