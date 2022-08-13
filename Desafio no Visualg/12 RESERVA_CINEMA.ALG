algoritmo "CadastroCinema"
//Crie um programa de reserva de 9 cadeiras no cinema. Você deverar utilizar um vetor com as posições
//B1, B2, B3 ... B9 e pedir para o usuário reservar sua cadeira. Uma cadeira só pode ser reservada uma
//úunica vez.
var
    cadeira: vetor[1..9] de caractere
    entrada, apont, espere: caractere
    i, cont: inteiro
inicio
      para i <- 1 ate 9 faca
           cadeira[i] := "B" + numpcarac(i)
           escreva("[  ", cadeira[i], "  ]")
      fimPara
      cont := 0
      enquanto cont < 9 faca
               escreval()
               escreva("Informe a cadeira a ser reservada: ")
               leia(entrada)
               apont := copia(entrada, 2, 2)

               se cadeira[caracpnum(apont)] <> "---" entao
                  cadeira[caracpnum(apont)] := "---"
                  escreval("Cadeira reservada com sucesso!")
                  cont := cont + 1
               senao
                    escreval("A cadeira indicada ja esta ocupada.")
               fimSe
               escreva("<< Pressione qualquer tecla para continuar >>")
               leia(espere)
               limpaTela
               para i <- 1 ate 9 faca
                    escreva("[  ", cadeira[i], "  ]")
               fimPara
      fimEnquanto
      escreval()
      escreval("Todas as cadeiras foram reservadas. tenha um ótimo filme!")
fimalgoritmo
