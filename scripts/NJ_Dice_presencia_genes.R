library("ade4")
library("readxl")
library("ape")

# read_xlsx("mat.xlsx")
# matriz <- read_xlsx("results/PROTEINORTHO/distancias.tsv")
matriz <- read.table(file="results/PROTEINORTHO/distancias.tsv", header=TRUE)
head.matrix(matriz)
# DEBEMOS TRANSPONER LA MATRIZ PORQUE LAS DISTANCIAS SE CALCULAN POR FILAS, NO POR COLUMNAS
matriz.t <- t(matriz)
dim(matriz.t)
matriz.distancias <- dist.binary(matriz.t, method = 1, diag = TRUE, upper = TRUE)  # GENERA UNA MATRIZ CUADRADA CON LA DISTANCIA DE DICE
matriz.distancias

m <- data.matrix(matriz.distancias) #transforma el data.frame "matriz.distancias" en la matriz "m"
is.matrix(m)
dim(m)
U <- matrix(1,dim(m),dim(m)) #genero una matriz unidad de igual dimension que m
similarity <- U-m  # calculamos la matriz de similitudes como 1 - distancias
is.matrix(similarity)
arbol <- nj(similarity) #calculo del arbol NJ por el m?todo de Saitou-Nei (1987)
write.tree(arbol, file = "ex.tre")
plot(arbol,"u")
plot(arbol)