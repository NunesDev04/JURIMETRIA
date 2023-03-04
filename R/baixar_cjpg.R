library(tjsp)
library(writexl)
library(readxl)
library(tidyverse) ##se carregar o tidyverse nao precisa carregar o dplyr
library(genderBR)

?tjsp_baixar_cjpg

tjsp_baixar_cjpg(
  livre = "santander",
  aspas = FALSE,
  processo = "",
  foro = "",
  vara = "",
  classe = "",
  assunto = "",
  magistrado = "",
  inicio = "01/01/2022",
  fim = "31/12/2022",
  diretorio = "data-raw/cjpg",
  paginas = 1:10
)

?tjsp_ler_cjpg

cjpg <- tjsp_ler_cjpg(diretorio = "data-raw/cjpg")

write_xlsx(cjpg, "data/cjpg.xlsx") # erro devido a limitação de tamanho do excel

write.csv2(cjpg, "data/cjpg.csv")

cjpg <- cjpg |> # 
      mutate(sexo = get_gender(magistrado), .after = magistrado)

##exemplo para alterar coluna com base no nome (ifelse)

cjpg <- cjpg |> 
      mutate(sexo = ifelse(magistrado == "Ruslaine Romano", "Female", sexo))

?tjsp_autenticar        
?tjsp_baixar_cpopg
?tjsp_ler_dados_cpopg

tjsp_autenticar()

tjsp_baixar_cpopg(processos = cjpg$processo, sono = 1, diretorio = "data-raw/cpopg")

#exemplo duvida em aula

##meus_processos <- c("numero de processo", "numero de processo") cria uma lista de processos, eu que coloco quais sao
##escrever o outro exemplo que esta no print - precisa criar pasta dentro de data-raw para salvar esses processos

arquivos <- list.files("data-raw/cpopg", full.names = TRUE)
arquivos
cpopg_dados <- tjsp_ler_dados_cpopg(arquivos = arquivos)
cpopg_partes <- tjsp_ler_partes(arquivos = arquivos)
cpopg_movimentacao <- tjsp_ler_movimentacao(arquivos = arquivos)

  