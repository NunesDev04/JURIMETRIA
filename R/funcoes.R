## EXEMPLOS c() , matris()

Sys.time() ## nao precisa de argumento

sqrt() ## sem argumento da erro
sqrt(16) ## precisa de argumento e deu certo 

?sqrt ## aqui tem x e y dentro dos parenteses, o que significa que o argumento é obrigatório

sqrt(x=2)

library(tjsp)

?tjsp_baixar_cjpg

somar <- function() {
  2+3
}
somar()
somar <- function() {
  2+3
  5+4
}
somar()
somar <- function() {
  a <<- 2+3 #enviando a variavel a para um nivel acima
  b <- 5+4
}
somar() ## testando funcao dentro de funcao
f1 <- function() {
  f2 <- function() {
    a <- 1
  }
  f2()
  2+a
}
f1()

## FUNCAO DENTRO DE FUNCAO

exponenciar <-function(x,y) {
  x^y
}
exponenciar(2,3)
exponenciar(y=3, x=2)

## PACOTES









