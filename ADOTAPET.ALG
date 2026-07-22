Algoritmo "AdotaPet"

Var
   encontrou, disponivel, adotado: logico
   opcao, pesquisa, N1, N2: caractere
   I, quantidade, opcaoEdicao: inteiro

   nome: vetor[1..100] de caractere
   especie: vetor[1..100] de caractere
   sexo: vetor[1..100] de caractere
   idade: vetor[1..100] de caractere
   vacina: vetor[1..100] de caractere
   castrado: vetor[1..100] de caractere
   adocao: vetor[1..100] de caractere



procedimento cabecalho()
inicio
      escreval("=======================")
      escreval("   A D O T A   P E T   ")
      escreval("=======================")
fimprocedimento

procedimento menu()
inicio
      escreval("        M E N U        ")
      escreval("-----------------------")
      escreval("1 - Cadastrar animal")
      escreval("2 - Listar animal")
      escreval("3 - Procurar animal")
      escreval("4 - Mostrar disponíveis")
      escreval("5 - Marcar como adotado")
      escreval("0 - Sair")
      escreval()
fimprocedimento

procedimento cadastro()
inicio
      escreval("CADASTRO")
      escreval("-----------------------")
      escreval()
      
      repita
        escreva("1 - Nome do animal: ")
        leia(nome[quantidade])
      
          se (nome[quantidade] = "") entao
            escreval("Nome não pode ficar em branco!")
          fimse

      ate (nome[quantidade] <> "")
       
        repita
          escreva("2 - Espécie: ")
          leia(especie[quantidade])
      
            se (especie[quantidade] = "") entao
              escreval("Espécie não pode ficar em branco!")
            fimse
        
        ate (especie[quantidade] <> "")
      
          repita
            escreva("3 - Sexo: ")
            leia(sexo[quantidade])
      
              se (sexo[quantidade] = "") entao
                escreval("Sexo não pode ficar em branco!")
              fimse

          ate (sexo[quantidade] <> "")
      
            repita
              escreva("4 - Idade: ")
              leia(idade[quantidade])
      
                se (idade[quantidade] = "") entao
                  escreval("Idade não pode ficar em branco!")
                fimse
        
            ate (idade[quantidade] <> "")
            
             escreval()
             escreval("Responda com Sim ou Não")
             escreval()
      
              repita
                escreva("5 - Vacinado [S/N]: ")
                leia(vacina[quantidade])
                  
                  se (vacina[quantidade] <> "sim") e (vacina[quantidade] <> "Sim") e (vacina[quantidade] <> "SIM") e (vacina[quantidade] <> "s") e (vacina[quantidade] <> "S") e (vacina[quantidade] <> "nao") e (vacina[quantidade] <> "Nao") e (vacina[quantidade] <> "NAO") e (vacina[quantidade] <> "n") e (vacina[quantidade] <> "N") e (vacina[quantidade] <> "") e (vacina[quantidade] <> "não") e (vacina[quantidade] <> "Não") e (vacina[quantidade] <> "NÃO") entao
                    escreval()
                    escreval("Digite uma resposta válida: Sim ou Não")
                  fimse

              ate (vacina[quantidade] = "sim") ou (vacina[quantidade] = "Sim") ou (vacina[quantidade] = "SIM") ou (vacina[quantidade] = "s") ou (vacina[quantidade] = "S") ou (vacina[quantidade] = "nao") ou (vacina[quantidade] = "Nao") ou (vacina[quantidade] = "NAO") ou (vacina[quantidade] = "n") ou (vacina[quantidade] = "N") ou (vacina[quantidade] = "não") ou (vacina[quantidade] = "Não") ou (vacina[quantidade] = "NÃO")
      
                repita
                  escreva("6 - Castrado [S/N]: ")
                  leia(castrado[quantidade])
      
                    se (castrado[quantidade] <> "sim") e (castrado[quantidade] <> "Sim") e (castrado[quantidade] <> "SIM") e (castrado[quantidade] <> "s") e (castrado[quantidade] <> "S") e (castrado[quantidade] <> "nao") e (castrado[quantidade] <> "Nao") e (castrado[quantidade] <> "NAO") e (castrado[quantidade] <> "n") e (castrado[quantidade] <> "N") e (castrado[quantidade] <> "") e (castrado[quantidade] <> "não") e (castrado[quantidade] <> "Não") e (castrado[quantidade] <> "NÃO") entao
                      escreval()
                      escreval("Digite uma resposta válida: Sim ou Não")
                    fimse

                ate (castrado[quantidade] = "sim") ou (castrado[quantidade] = "Sim") ou (castrado[quantidade] = "SIM") ou (castrado[quantidade] = "s") ou (castrado[quantidade] = "S") ou (castrado[quantidade] = "nao") ou (castrado[quantidade] = "Nao") ou (castrado[quantidade] = "NAO") ou (castrado[quantidade] = "n") ou (castrado[quantidade] = "N") ou (castrado[quantidade] = "não") ou (castrado[quantidade] = "Não") ou (castrado[quantidade] = "NÃO")

        
                  repita

                    escreva("7 - Disponível para adoção [S/N]: ")
                    leia(adocao[quantidade])

                      se (adocao[quantidade] <> "sim") e (adocao[quantidade] <> "Sim") e (adocao[quantidade] <> "SIM") e (adocao[quantidade] <> "s") e (adocao[quantidade] <> "S") e (adocao[quantidade] <> "nao") e (adocao[quantidade] <> "Nao") e (adocao[quantidade] <> "NAO") e (adocao[quantidade] <> "n") e (adocao[quantidade] <> "N") e (adocao[quantidade] <> "não") e (adocao[quantidade] <> "Não") e (adocao[quantidade] <> "NÃO") e (adocao[quantidade] <> "") entao
                        escreval()
                        escreval("Digite uma resposta válida: Sim ou Não")
                      fimse

                  ate (adocao[quantidade] = "sim") ou (adocao[quantidade] = "Sim") ou (adocao[quantidade] = "SIM") ou (adocao[quantidade] = "s") ou (adocao[quantidade] = "S") ou (adocao[quantidade] = "nao") ou (adocao[quantidade] = "Nao") ou (adocao[quantidade] = "NAO") ou (adocao[quantidade] = "n") ou (adocao[quantidade] = "N") ou (adocao[quantidade] = "não") ou (adocao[quantidade] = "Não") ou (adocao[quantidade] = "NÃO")
                  
                  limpatela
                    
                    repita

                      escreval("Registro do animal")
                      escreval("--------------------")
                      escreval("1 - Nome do animal: ", nome[quantidade])
                      escreval("2 - Espécie: ", especie[quantidade])
                      escreval("3 - Sexo: ", sexo[quantidade])
                      escreval("4 - Idade: ", idade[quantidade])
                      escreval("5 - Vacinado [S/N]: ", vacina[quantidade])
                      escreval("6 - Castrado [S/N]: ", castrado[quantidade])
                      escreval("7 - Disponível para adoção [S/N]:", adocao[quantidade])
                      escreval()
                      escreva("Digite o número do campo para editar, ou 0 para confirmar: ")
                      leia(opcaoEdicao)
                      
                      limpatela

                        escolha (opcaoEdicao)

                          caso 1
                            escreva("1 - Nome do animal: ")
                            leia(nome[quantidade])

                          caso 2
                            escreva("2 - Espécie: ")
                            leia(especie[quantidade])

                          caso 3
                            escreva("3 - Sexo: ")
                            leia(sexo[quantidade])
                      
                          caso 4
                            escreva("4 - Idade: ")
                            leia(idade[quantidade])
                      
                          caso 5
                            escreva("5 - Vacinado [S/N]: ")
                            leia(vacina[quantidade])
                      
                          caso 6
                            escreva("6 - Castrado [S/N]: ")
                            leia(castrado[quantidade])
                      
                          caso 7
                            escreva("7 - Disponível para adoção [S/N]: ")
                            leia(adocao[quantidade])
                      
                          caso 0
                            escreva("0 - Confirmar")

                        fimescolha

                    ate (opcaoEdicao = 0)
                    
                    limpatela

fimprocedimento

procedimento info()
inicio
      escreval("Nome: ",nome[I])
      escreval("Espécie: ",especie[I])
      escreval("Sexo: ",sexo[I])
      escreval("Idade: ",idade[I])
      escreval("Vacinado [S/N]: ",vacina[I])
      escreval("Castrado [S/N]: ", castrado[I])
      escreval("Disponível [S/N]: ",adocao[I])
fimprocedimento

Inicio
      opcao <- "-1"
      quantidade <- 0

        enquanto (opcao <> "0") faca
          cabecalho()
          menu()

          escreva("Digite a opção que deseja: ")
          leia(opcao)
          limpatela

          escolha (opcao)

            caso "1"

              se (quantidade = 100) entao

                escreval("Limite de animais atingido!")
                
              senao

                quantidade <- quantidade +1
                cabecalho()
                cadastro()
                escreval()
                escreval("Animal Cadastrado!")

                escreval()
                escreva("Pressione ENTER para voltar ao menu...")
                leia(N1)

                  limpatela

              fimse

              caso "2"

              cabecalho()
              escreval("LISTA")
              escreval("-----------------------")

                para I de 1 ate quantidade faca

                  escreval()
                  info()
                  escreval("-----------------------")
                  escreval()

                fimpara

                  escreval()
                  escreva("Pressione ENTER para voltar ao menu...")
                  leia(N1)

                    limpatela


                  caso "3"

                  cabecalho()
                  escreval("PESQUISA")
                  escreval("-----------------------")
                  escreva("Nome do animal: ")
                  leia(pesquisa)
                  encontrou <- falso

                      para I de 1 ate quantidade faca

                         se (pesquisa = nome[I]) entao

                           escreval(" DADOS DO ANIMAL")
                           escreval("-----------------------")
                           info()
                           
                           encontrou <- verdadeiro
                           
                           interrompa

                         fimse

                      fimpara

                           se encontrou = falso entao

                             escreval()
                             escreval("Animal não encontrado.")

                           fimse

                             escreval()
                             escreva("Pressione ENTER para voltar ao menu...")
                             leia(N1)

                               limpatela

                    caso "4"

                    cabecalho()
                    escreval("DISPONÍVEIS")
                    escreval("-----------------------")
                    disponivel <- falso

                        para I de 1 ate quantidade faca

                          se (adocao[I] = "S" ou adocao[I] = "s" ou adocao[I] = "SIM" ou adocao[I] = "Sim" ou adocao[I] = "sim") entao

                            info()
                            escreval("-----------------------")

                            disponivel <- verdadeiro
                            
                          fimse

                        fimpara
                        
                          se disponivel = falso entao

                            escreval()
                            escreval("Nenhum animal disponível para adoção.")

                          fimse

                            escreval()
                            escreva("Pressione ENTER para voltar ao menu...")
                            leia(N1)
                            limpatela

                      caso "5"

                      cabecalho()
                      escreval("CONFIRMAR ADOÇÃO")
                      escreval("-----------------------")
                      escreva("Nome do animal: ")
                      leia(N2)
                      adotado <- falso

                        para I de 1 ate quantidade faca

                          se (N2 = nome[I]) entao
                          
                           se (adocao[I] = "N" ou adocao[I] = "n" ou adocao[I] = "não" ou adocao[I] = "Não" ou adocao[I] = "NAO" ou adocao[I] = "NÃO") entao

                             escreval()
                             escreval("Esse animal está indisponível para adoção.")
                             interrompa
                             
                           senao

                            adocao[I] <- "N"
                            adotado <- verdadeiro
                            escreval()
                            escreval("Adoção alterada com sucesso!")
                            escreval("Novo status: ", adocao[I])
                            interrompa
                            
                           fimse

                          fimse

                       fimpara

                         se adotado = falso entao

                           escreval()
                           escreval("Falha ao atualizar status.")

                         fimse

                           escreval()
                           escreva("Pressione ENTER para voltar ao menu...")
                           leia(N1)
                           limpatela

                         caso "0"
                         limpatela
                         
                         escreval("Fim da execução.")

                         outrocaso
                           escreval("Opção inválida!")
            fimescolha

       fimenquanto

Fimalgoritmo