Algoritmo "Relatorio_Eleicoes"

Var
   x,opcao,votantesMax, option: inteiro
   qntdCandidatoA,qntdCandidatoB:inteiro
   totalNulo,totalBranco,totalVotos: inteiro

Inicio
   escreval("    ======= CIPA Carreta S.A =======")
   escreval
   option <- 1
   enquanto option = 1 faça
      limpatela
      escreva("Quantidade de eleitores participantes:")
      leia(votantesMax)
      escreval

      PARA x de 1 ate votantesMax FACA

         escreval("[1] Candidato Jeferson Soares")
         escreval("[2] Candidato Mario Felipe Silva")
         escreval("[3] Voto Nulo")
         escreval("[4] Voto Branco")
         escreval
         escreva("Digite qual candidato você irá votar:")
         leia (opcao)
         escreval

         ESCOLHA opcao
         caso 1
            escreval("Voto computado!")
            escreval
         caso 2
            escreval("Voto computado!")
            escreval
         caso 3
            escreval("Voto nulo!")
            escreval
         caso 4
            escreval("Voto branco!")
            escreval
         FIMESCOLHA

         SE opcao = 1 entao
            qntdCandidatoA <- qntdCandidatoA + 1
         SENAO
            SE opcao = 2 entao
               qntdCandidatoB <- qntdCandidatoB + 1
            SENAO
               SE opcao = 3 entao
                  totalNulo <- totalNulo + 1
               SENAO
                  SE opcao = 4 entao
                     totalBranco <- totalBranco + 1
                  FIMSE
               FIMSE
            FIMSE
         FIMSE
      FIMPARA

      totalVotos <- (qntdCandidatoA + qntdCandidatoB + totalNulo + totalBranco)

      escreval
      escreval("======Relatório Final======")
      escreval
      escreval("Total de votos:",totalVotos)
      escreval("Total para o Jeferson é:",qntdCandidatoA)
      escreval("Total para Mario é:",qntdCandidatoB)
      escreval("Total votos nulos:",totalNulo)
      escreval("Total votos brancos:",totalBranco)
      escreval

      SE qntdCandidatoB = qntdCandidatoA entao
         escreval ("Votação empatada!")
      SENAO
         SE qntdCandidatoB > qntdCandidatoA entao
            escreval("O candidato vencedor é o Mario Felipe Silva!")
         SENAO
            escreval("O candidato vencedor é o Jeferson Soares!")
         FIMSE
      FIMSE

      escreval("Deseja continuar digitando?")
      escreval("[1] Sim")
      escreval("[2] Não")
      leia(option)
   fimenquanto

Fimalgoritmo