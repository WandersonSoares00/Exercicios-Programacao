algoritmo "Gerador"
//Crie um programa que tenha um procedimento Gerador() que tenha 3 parâmetros: mensagem, a
//quantidade de vezes que a mensagem irá se repetir e a escolhas de dois componentes visuais (linhas)
//Quando o procedimento for chamado, deve imprimir na tela a mensagem, de acordo com a quantide de
//vezes e o seu componente visual.
var
   palavra: caractere
Procedimento Gerador(s: caractere; q, op: inteiro)
var
   separa: caractere
   i: inteiro
inicio
    se op = 1 entao
       separa <- "*********************"
    senao
         separa <- "+-------=======------+"
    fimse
    escreval(separa)
    para i <- 1 ate q faca
         escreval("      ", s)
    fimPara
    escreval(separa)
fimprocedimento
inicio
      palavra <- "Olá mundo"
      Gerador(palavra, 3, 1)
fimalgoritmo
