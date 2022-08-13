algoritmo "Triangulos"
// Crie um programa que leia o tamanho de três segmentos de reta.
//Analise seus comprimentos e diga se é possível formar um triângulo com essas retas.
//Caso seja possível formar, mostre o tipo de triângulo que será formado:
// - EQUILÁTERO: todos os lados iguais
// - ISÓSCELES: dois lados iguais
// - ESCALENO: todos os lados diferentes
var
   a, b, c: real
inicio
      escreval("Informe três segmentos de reta: ")
      leia(a, b, c)
      se (a + b > c) e (a + c > b) e (c + b > a) entao
         escreval("EHH possivel formar triangulos com os segmentos!!!")
         se ((a <> b) ou (b <> c))  e ((a = b) ou (a = c) ou (b = c))entao
            escreval("O triângulo serah isosceles.")
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
