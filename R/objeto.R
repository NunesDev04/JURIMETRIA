## OBJETOS

# numero inteiro - "integer"

x <- 2L #cria o objeto x
typeof(x) #verifica o tipo do objeto x - o tipo e a natureza do objeto

# numeros decimais - "double"

y = 2.5
typeof(y)

#realizando operacoes usando o nome dos objetos

z <- x + y
typeof(z)

#objeto texto - character - pode usar aspas simples ou duplas

w <- "jurimetria"
u <- '2'
v <- '2.5'
u + v
typeof(w)

# objeto da classe DATA - classe e o comportamento do objeto

data <- as.Date("2023-02-25")
typeof(data)

data2 <- as.Date("2023-03-01")

as.numeric(data)
as.numeric(data2)

# a data e contada a partir de 01-01-1970, o que justifica os numeros 19413 e 19417

#operacoes com data - aparece escrito no console a diferenca de dia entre uma e outra

data2 - data

class(data)

## VETORES  - sao iguais ous objetos, mas aqui existe mais de um valor

nome <- c("filipe", "andre", "julia", "amanda")
typeof(nome)

numeros <- 1:10 #primeiro e ultimo numero reconhecido pelo R diferente do python 

#funcao agregadora, aplicada a todos os elementos

sum (numeros)
mean (numeros)
min (numeros)

#subconjunto
numeros [10]

numeros[2:5]

numeros[-1] #negativo tem efeito de excluir

#fator - combinacao de texto com numero

nomes <- c("filipe", "andre", "julia", "amanda", "flavia", "filipe", "amanda")
nomes_como_fator <- as.factor(nomes)
nomes_como_fator

as.numeric(nomes_como_fator)

## MATRIZES - é um vetor com 2 dimensoes

m <- matrix (1:15)
m
m*2

m <- matrix (1:15, ncol = 3)
m

## DATAFRAME - emparelhamento de vetores

df <- data.frame(nome = c("Fabiana", "Juvenal", "Lucas", "Pedro", "Beatriz", "Bruno"),
                 idade = c(55, 29, 35, 34, 30, 40))
df

## a diferenca entre matriz e data frame e que a matriz e um vetor enquanto dataframe e uma lista, 
## no df consigo colocar vetores de diferentes tipos de classe, na matrix nao consegue fazer isso. O DF e o principal objeto

## LISTA - estrutura que aceita diferentes tipos de classe e objeto

l <- list(m, data, df)
l
















