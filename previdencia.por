algoritmo "previdencia"

Var
   idade:inteiro
   a: vetor [1..10] de inteiro
   msala, msald, tpc, ca, cd, resuc, ia, id, resui, prof, fp, va, rede, rural, es:real
   sexo, f, m: caracter
   i, k, j, posicao, troca: inteiro

Inicio
      escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•")
      escreval("          SIMULADOR DA APOSENTADORIA         ")
      escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•")
      escreval("")
      escreva("informe sua idade:")
      leia(idade)
      escreva("informe seu tempo de contribuição:")
      leia(tpc)
      escreva("informe seu sexo(f ou m):")
      leia(sexo)
      enquanto (sexo<>"f") e (sexo<>"m") faca
      escreval("sexo inválido")
      escreva("informe seu sexo(f ou m):")
      leia(sexo)
      fimenquanto
      escreval("")
      escreval("Aperte f9 para prosseguir!")
      pausa
      limpatela

      escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•")
      escreval("             informe sua profissão           ")
      escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•")
      escreval("")
      escreval("1- Outro (por idade)")
      escreval("2- Outro (por tempo de contribuição)")
      escreval("3- Trabalhador Rural")
      escreval("4- Professor")
      leia (prof)

      enquanto (prof<>1) e (prof<>2) e (prof<>3) e (prof<>4) faca
      escreval("Opção inválida")
      escreval("1- Outro (por idade)")
      escreval("2- Outro (por tempo de contribuição)")
      escreval("3- Trabalhador Rural")
      escreval("4- Professor")
      leia (prof)
      fimenquanto

      escreval("")
      escreval("Aperte f9 para prosseguir!")
      pausa
      limpatela

      escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•")
      escreval("      informe seus 10 últimos salários:      ")
      escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•")
      escreval("")
      para i:= 1 ate 10 faca
      escreval("digite o seu",i,"º salário")
      leia(a[i])
      fimpara
      msald:=((a[1] + a[2] + a[3] + a[4] + a[5] + a[6] + a[7] + a[8] + a[9] + a[10])/10)

      posicao := 1
   para i := 1 ate 10 faca
      k:= a[i]
      para j := i ate 10 faca
         se a[j] <= k entao
            k := a[j]
            posicao := j
         fimse
      fimpara
      troca := a[i]
      a[i] := k
      a[posicao] := troca
   fimpara

   escreval("")
       escreval("Sua média salarial é: ")
       msala:= ((a[3] + a[4] + a[5] + a[6] + a[7] + a[8] + a[9] + a[10])/8)
       escreval("")
       escreval("Atual:", msala)
       escreval("Reforma da Previdência", msald)
       escreval("")
       escreval("aperte f9 para prosseguir.")

       pausa
       limpatela



      escolha (prof)
      caso 1
        ia:=(70/100 + 1/100 * tpc) * msala
        id:=(60/100 + 2/100 *(tpc - 20))*msald
        se (sexo = "f") entao
           se (idade>=62) e (tpc>=40) entao
            escreval("***************************************************************************************************")
            escreval("")
            escreval("Apto para aposentadoria de acordo com a nova previdência. Você terá direito a 100% da aposentadoria")
            escreval("Você receberá aproximadamente:")
            escreval("")
            escreval("Regras atuais:",ia)
            escreval("Reforma da previdência:",id)
            escreval("")
            escreval("***************************************************************************************************")
           senao
              se (idade>=62) e (tpc>=20) e (tpc<40) entao
                 escreval("***************************************************************************************************")
                 escreval("")
                 escreval("Apto para aposentadoria de acordo com a nova previdência. Você terá direito a 60% da aposentadoria")
                 escreval("Você receberá aproximadamente:")
                 escreval("")
                 escreval("Regras atuais:",ia)
                 escreval("Reforma da previdência:",id)
                 escreval("")
                 escreval("***************************************************************************************************")

              senao
                 se (idade>=60) e (tpc>=15) entao
                   escreval("***************************************************************************************************")
                   escreval("")
                   escreval("apto para aposentadoria pela regra atual")
                   escreval("Você receberá aproximadamente:")
                   escreval("")
                   escreval("Regras atuais:",ia)
                   escreval("Reforma da previdência: não apto, Faltam", 62 - idade," anos e", 20 - tpc," anos de contribuição")
                   escreval("")
                   escreval("***************************************************************************************************")

                 senao
                   escreval("***************************************************************************************************")
                   escreval("")
                   escreval("Não apto para aposentadoria")
                   escreval("Regras atuais: Faltam ", 60 - idade," anos e ", 15 - tpc," anos de contribuição")
                   escreval("Reforma da previdência: Faltam ", 62 - idade," anos e ", 20 - tpc," anos de contribuição")
                   escreval("")
                   escreval("***************************************************************************************************")
                 fimse
              fimse
           fimse
        fimse
        se(sexo = "m") entao
           se (idade>=65) e (tpc>=40) entao
            escreval("***************************************************************************************************")
            escreval("")
            escreval("Apto para aposentadoria de acordo com a nova previdência. Você terá direito a 100% da aposentadoria")
            escreval("Você receberá aproximadamente:")
            escreval("")
            escreval("Regras atuais:",ia)
            escreval("Reforma da previdência:",id)
            escreval("")
            escreval("***************************************************************************************************")
           senao
              se (idade>=65) e (tpc>=20) e (tpc<40) entao
                escreval("***************************************************************************************************")
                escreval("")
                escreval("Apto para aposentadoria de acordo com a nova previdência. Você terá direito a 60% da aposentadoria")
                escreval("Você receberá aproximadamente:")
                escreval("")
                escreval("Regras atuais:",ia)
                escreval("Reforma da previdência:",id)
                escreval("")
                escreval("***************************************************************************************************")
              senao
                 se (idade>=65) e (tpc>=15) entao
                    escreval("***************************************************************************************************")
                    escreval("")
                    escreval("apto para aposentadoria pela regra atual")
                    escreval("Você receberá aproximadamente:")
                    escreval("")
                    escreval("Regras atuais:",ia)
                    escreval("Reforma da previdência: não apto, Faltam", 65 - idade," anos e ", 20 - tpc," anos de contribuição")
                    escreval("")
                    escreval("***************************************************************************************************")
                 senao
                   escreval("***************************************************************************************************")
                   escreval("")
                   escreval("Não apto para aposentadoria")
                   escreval("Regras atuais: Faltam ", 65 - idade," anos e ", 15 - tpc," anos de contribuição")
                   escreval("Reforma da previdência: Faltam", 65 - idade," anos e ", 20 - tpc," anos de contribuição")
                   escreval("")
                   escreval("***************************************************************************************************")
                 fimse
              fimse
           fimse
        fimse


        //parte 2

        caso 2
        ca:= idade + tpc

        escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨*•")
        escreval("informe sua espectativa de sobrevida de acordo com sua idade:")
        escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨*•")
        escreval("")
        escreval("tabela de espectativa de sobrevida:")
        escreval(" idade     /    expectativa    /     idade    /    expectativa      /     idade    /    expectativa")
        escreval(" 48 anos         32,2 anos          58 anos          24,0 anos           68 anos         16,6 anos")
        escreval(" 49 anos         31,4 anos          59 anos          23,2 anos           69 anos         15,9 anos")
        escreval(" 50 anos         30,5 anos          60 anos          22,4 anos           70 anos         15,2 anos")
        escreval(" 51 anos         29,7 anos          61 anos          21,6 anos           71 anos         14,6 anos")
        escreval(" 52 anos         28,8 anos          62 anos          20,9 anos           72 anos         14,0 anos")
        escreval(" 53 anos         28,0 anos          63 anos          20,1 anos           73 anos         13,3 anos")
        escreval(" 54 anos         27,2 anos          64 anos          19,4 anos           74 anos         12,7 anos")
        escreval(" 55 anos         26,4 anos          65 anos          18,7 anos           75 anos         12,2 anos")
        escreval(" 56 anos         25,6 anos          66 anos          18,0 anos           76 anos         11,6 anos")
        escreval(" 57 anos         24,8 anos          67 anos          17,3 anos           77 anos         11,1 anos")
        escreval("")
        escreval("      *idade < 48 = ~ 40,0                        *idade > 77 = ~ 10,0                            ")
        leia (es)
          fp:= (tpc*31/100)/es *(1+((idade+tpc*31/100)/100))
        escreval("")
        escreval("Seu fator previdenciário é:",fp)
        escreval("")
        escreval("Aperte f9 para prosseguir!")

        pausa
        limpatela

        va:= fp * msala
        se (sexo = "f") entao
           se (tpc>=30) e (ca>=86) entao
            escreval("Apto para aposentadoria de acordo com as regras atuais.")
            escreval("Você receberá aproximadamente:")
            escreval("")
            escreval("Regras atuais:",va)
            escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
            senao
               se(tpc>=30) entao
                escreval("Apto para aposentadoria de acordo com as regras atuais desde que seja pago um pedágio de 50% sobre o tempo que falta para se aposentar..")
                escreval("Você receberá aproximadamente:")
                escreval("")
                escreval("Regras atuais:",va)
                escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
                senao
                   se(idade>=48) e (tpc>=25) entao
                    escreval("Apto para aposentadoria de acordo com as regras atuais.")
                    escreval("Você receberá aproximadamente:")
                    escreval("")
                    escreval("Regras atuais:",va)
                    escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
                   senao
                    escreval("Não apto")
                    escreval("Regras atuais: Faltam", 48 - idade," anos e ", 25 - tpc," anos de contribuição")
                    escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
                   fimse
               fimse
           fimse
        fimse
        se(sexo = "m") entao
           se (tpc>=35) e (ca>=96) entao
            escreval("Apto para aposentadoria de acordo com as regras atuais.")
            escreval("Você receberá aproximadamente:")
            escreval("")
            escreval("Regras atuais:",va)
            escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
           senao
               se(tpc>=35) entao
                escreval("Apto para aposentadoria de acordo com as regras atuais desde que seja pago um pedágio de 50% sobre o tempo que falta para se aposentar.")
                escreval("Você receberá aproximadamente:")
                escreval("")
                escreval("Regras atuais:",va)
                escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
               senao
                   se(idade>=53) e (tpc>=30) entao
                    escreval("Apto para aposentadoria de acordo com as regras atuais.")
                    escreval("Você receberá aproximadamente:")
                    escreval("")
                    escreval("Regras atuais:",va)
                    escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
                   senao
                    escreval("Não apto")
                    escreval("Regras atuais: Faltam", 53 - idade," anos e ", 30 - tpc," anos de contribuição")
                    escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
                   fimse
               fimse
           fimse
        fimse

        //parte3

        caso 3
          ia:=(70/100 + 1/100 * tpc) * msala
          id:=(60/100 + 2/100 *(tpc - 20))*msald
         escreval("Infome seus anos de atividade rural:")
         leia(rural)
         se (sexo = "f")entao
          se(idade>=60) e (tpc>=20) entao
           escreval("Apto para aposentadoria de acordo com a nova previdência")
           escreval("Você receberá aproximadamente:")
           escreval("")
           escreval("Regras atuais:",ia)
           escreval("Reforma da previdência:",id)
          senao
             se (idade>=55) e (tpc>=15)entao
               escreval("Apto para aposentadoria atual")
               escreval("Você receberá aproximadamente:")
               escreval("")
               escreval("Regras atuais:",ia)
               escreval("Reforma da previdência: Faltam", 60 - idade," anos e ", 20 - tpc," anos de contribuição")
)
             senao
                se (rural>=15) entao
                escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨*•")
                escreval("informe sua espectativa de sobrevida de acordo com sua idade:")
                escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨*•")
                escreval("")
                escreval("tabela de espectativa de sobrevida:")
                escreval(" idade     /    expectativa    /     idade    /    expectativa      /     idade    /    expectativa")
                escreval(" 48 anos         32,2 anos          58 anos          24,0 anos           68 anos         16,6 anos")
                escreval(" 49 anos         31,4 anos          59 anos          23,2 anos           69 anos         15,9 anos")
                escreval(" 50 anos         30,5 anos          60 anos          22,4 anos           70 anos         15,2 anos")
                escreval(" 51 anos         29,7 anos          61 anos          21,6 anos           71 anos         14,6 anos")
                escreval(" 52 anos         28,8 anos          62 anos          20,9 anos           72 anos         14,0 anos")
                escreval(" 53 anos         28,0 anos          63 anos          20,1 anos           73 anos         13,3 anos")
                escreval(" 54 anos         27,2 anos          64 anos          19,4 anos           74 anos         12,7 anos")
                escreval(" 55 anos         26,4 anos          65 anos          18,7 anos           75 anos         12,2 anos")
                escreval(" 56 anos         25,6 anos          66 anos          18,0 anos           76 anos         11,6 anos")
                escreval(" 57 anos         24,8 anos          67 anos          17,3 anos           77 anos         11,1 anos")
                escreval("")
                escreval("      *idade < 48 = ~ 40,0                        *idade > 77 = ~ 10,0                            ")
                leia (es)
          fp:= (tpc*31/100)/es *(1+((idade+tpc*31/100)/100))
        escreval("")
        escreval("Seu fator previdenciário é:",fp)
        escreval("")
        escreval("Aperte f9 para prosseguir!")
        pausa
        limpatela

        va:= fp * msala

                   escreval("Apto para aposentadoria atual")
                   escreval("Regras atuais:",va)
                   escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
                senao
                   escreval("Não apto")
                   escreval("Regras atuais: Faltam ", 55 - idade," anos e ", 15 - tpc," anos de contribuição")
                   escreval("Reforma da previdência: Faltam", 60 - idade," anos e ", 20 - tpc," anos de contribuição")
                fimse
             fimse
          fimse
         fimse

         se (sexo = "m")entao
          se(idade>=60) e (tpc>=20) entao
           escreval("Apto para aposentadoria de acordo com a nova previdência")
           escreval("Você receberá aproximadamente:")
           escreval("")
           escreval("Regras atuais:",ia)
           escreval("Reforma da previdência:",id)
          senao
             se (idade>=60) e (tpc>=15)entao
               escreval("Apto para aposentadoria atual")
               escreval("Você receberá aproximadamente:")
               escreval("")
               escreval("Regras atuais:",ia)
               escreval("Reforma da previdência: Faltam", 60 - idade," anos e ", 20 - tpc," anos de contribuição")

             senao
                se (rural>=15) entao
                escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨*•")
                escreval("informe sua espectativa de sobrevida de acordo com sua idade:")
                escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨*•")
                escreval("")
                escreval("tabela de espectativa de sobrevida:")
                escreval(" idade     /    expectativa    /     idade    /    expectativa      /     idade    /    expectativa")
                escreval(" 48 anos         32,2 anos          58 anos          24,0 anos           68 anos         16,6 anos")
                escreval(" 49 anos         31,4 anos          59 anos          23,2 anos           69 anos         15,9 anos")
                escreval(" 50 anos         30,5 anos          60 anos          22,4 anos           70 anos         15,2 anos")
                escreval(" 51 anos         29,7 anos          61 anos          21,6 anos           71 anos         14,6 anos")
                escreval(" 52 anos         28,8 anos          62 anos          20,9 anos           72 anos         14,0 anos")
                escreval(" 53 anos         28,0 anos          63 anos          20,1 anos           73 anos         13,3 anos")
                escreval(" 54 anos         27,2 anos          64 anos          19,4 anos           74 anos         12,7 anos")
                escreval(" 55 anos         26,4 anos          65 anos          18,7 anos           75 anos         12,2 anos")
                escreval(" 56 anos         25,6 anos          66 anos          18,0 anos           76 anos         11,6 anos")
                escreval(" 57 anos         24,8 anos          67 anos          17,3 anos           77 anos         11,1 anos")
                escreval("")
                escreval("      *idade < 48 = ~ 40,0                        *idade > 77 = ~ 10,0                            ")
                leia (es)
          fp:= (tpc*31/100)/es *(1+((idade+tpc*31/100)/100))
        escreval("")
        escreval("Seu fator previdenciário é:",fp)
        escreval("")
        escreval("Aperte f9 para prosseguir!")
        pausa
        limpatela

        va:= fp * msala

                   escreval("Apto para aposentadoria atual")
                   escreval("Regras atuais:",va)
                   escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
                senao
                   escreval("Não apto")
                   escreval("Regras atuais: Faltam ", 60 - idade," anos e ", 15 - tpc," anos de contribuição")
                   escreval("Reforma da previdência: Faltam", 60 - idade," anos e ", 20 - tpc," anos de contribuição")
                fimse
             fimse
          fimse
         fimse

         //parte 4
        caso 4
        escreval("Informe sua rede:")
        escreval("1- Pública")
        escreval("2- Privada")
        leia(rede)

        enquanto (rede<>1) e (rede<>2) faca
         escreval("Rede inválida")
         escreval("1- Pública")
         escreval("2- Privada")
         leia(rede)
        fimenquanto

        escolha(rede)
         caso 1
          ia:=(70/100 + 1/100 * tpc) * msala
          id:=(60/100 + 2/100 *(tpc - 20))*msald
         se (sexo = "f") entao
          se(idade>=60) e (tpc>=30) entao
           escreval("Apto para aposentadoria de acordo com a nova previdência")
           escreval("Você receberá aproximadamente:")
           escreval("")
           escreval("Regras atuais:",ia)
           escreval("Reforma da previdência:",id)
          senao
             se (idade>=50) e (tpc>=25)entao
               escreval("Apto para aposentadoria atual")
               escreval("Você receberá aproximadamente:")
               escreval("")
               escreval("Regras atuais:",ia)
               escreval("Reforma da previdência: Faltam", 60 - idade," anos e ", 30 - tpc," anos de contribuição")

             senao
                   escreval("Não apto")
                   escreval("Regras atuais: Faltam ", 50 - idade," anos e ", 25 - tpc," anos de contribuição")
                   escreval("Reforma da previdência: Faltam", 60 - idade," anos e ", 30 - tpc," anos de contribuição")
             fimse
          fimse
         fimse

         se (sexo = "m")entao
          se(idade>=60) e (tpc>=30) entao
           escreval("Apto para aposentadoria de acordo com a nova previdência")
           escreval("Você receberá aproximadamente:")
           escreval("")
           escreval("Regras atuais:",ia)
           escreval("Reforma da previdência:",id)

          senao
             se (idade>=55) e (tpc>=30)entao
               escreval("Apto para aposentadoria atual")
               escreval("Você receberá aproximadamente:")
               escreval("")
               escreval("Regras atuais:",ia)
               escreval("Reforma da previdência: Faltam", 60 - idade," anos e ", 30 - tpc," anos de contribuição")
             senao
                   escreval("Não apto")
                   escreval("Regras atuais: Faltam ", 55 - idade," anos e ", 30 - tpc," anos de contribuição")
                   escreval("Reforma da previdência: Faltam", 60 - idade," anos e ", 30 - tpc," anos de contribuição")
             fimse
          fimse
         fimse

         caso 2
        escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨*•")
        escreval("informe sua espectativa de sobrevida de acordo com sua idade:")
        escreval("•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨`*•.¸¸.•*´¨*•")
        escreval("")
        escreval("tabela de espectativa de sobrevida:")
        escreval(" idade     /    expectativa    /     idade    /    expectativa      /     idade    /    expectativa")
        escreval(" 48 anos         32,2 anos          58 anos          24,0 anos           68 anos         16,6 anos")
        escreval(" 49 anos         31,4 anos          59 anos          23,2 anos           69 anos         15,9 anos")
        escreval(" 50 anos         30,5 anos          60 anos          22,4 anos           70 anos         15,2 anos")
        escreval(" 51 anos         29,7 anos          61 anos          21,6 anos           71 anos         14,6 anos")
        escreval(" 52 anos         28,8 anos          62 anos          20,9 anos           72 anos         14,0 anos")
        escreval(" 53 anos         28,0 anos          63 anos          20,1 anos           73 anos         13,3 anos")
        escreval(" 54 anos         27,2 anos          64 anos          19,4 anos           74 anos         12,7 anos")
        escreval(" 55 anos         26,4 anos          65 anos          18,7 anos           75 anos         12,2 anos")
        escreval(" 56 anos         25,6 anos          66 anos          18,0 anos           76 anos         11,6 anos")
        escreval(" 57 anos         24,8 anos          67 anos          17,3 anos           77 anos         11,1 anos")
        escreval("")
        escreval("      *idade < 48 = ~ 40,0                        *idade > 77 = ~ 10,0                            ")
        leia (es)
          fp:= (tpc*31/100)/es *(1+((idade+tpc*31/100)/100))
        escreval("")
        escreval("Seu fator previdenciário é:",fp)
        escreval("")
        escreval("Aperte f9 para prosseguir!")
        pausa
        limpatela

        va:= fp * msala

         se (sexo = "f") entao
          se(tpc>=25) entao
           escreval("Apto para aposentadoria atual")
            escreval("Você receberá aproximadamente:")
            escreval("")
            escreval("Regras atuais:",va)
            escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
          senao
             escreval("Não apto")
              escreval("Regras atuais: Faltam", 25 - tpc," anos de contribuição")
              escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
          fimse
         fimse

         se (sexo = "m")entao
          se (tpc>=30) entao
           escreval("Apto para aposentadoria atual")
           escreval("Você receberá aproximadamente:")
           escreval("")
           escreval("Regras atuais:",va)
           escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
          senao
             escreval("Não apto")
             escreval("Regras atuais: Faltam", 30 - tpc," anos de contribuição")
             escreval("Reforma da previdência: Não será possível se aposentar exclusivamente por tempo de contribuição!")
          fimse
         fimse

        fimescolha

      fimescolha
fimalgoritmo
