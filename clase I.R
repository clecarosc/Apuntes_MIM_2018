#clase 1 mat para bioestadistica
#es bueno comenzar definiendo el working directory
rm(list = ls(all=TRUE)) #borra todas las variables guardadas
setwd("~/Desktop/mim/Ier sem/matematicas/mat-bioestadistica")
#definimos los vectores unidad: i, j, k
i <- c(1,0,0) #x
j <- c(0,1,0) #y
k <- c(0,0,1) #z
i %*% j #producto punto = 0, angulo de 90º
install.packages("pracma")#instalamos package pracma para calcular prod cruz de vectores
prodCruz <- cross(i,j) #producto cruz i, j = k(z)
prodCruz # 0,0,1 = k (eje z)

cross(i,k) #i x k =-j = 0,-1,0

Norm(i) #con esto se calcula la norma (largo) de un vector

#II. Matrices 
#Crear una matriz 2x2 de 1
M <- matrix(1, ncol = 2, nrow = 2); M

#crear una matriz 1,2,3,4
matrix(c(1:4), ncol=2) # crea una matriz de 2 columnas
matrix(c(1:4), nrow=2) # crea una matriz de 2 filas (por lo tanto, 2 cols)
matrix(c(1:4), nrow=2, byrow = T) #las entradas estan ordenadas por fila

A <- matrix(c(1:4), nrow=2) #guardamos la matriz como A
t(A) #transposicion de A
M+A #suma elemento por elemento
M*A #multiplicacion elemento por elemento
M %*% A #multiplicacion de matrices, no es conmutativa
diag(A) #entrega un vector numerico con la diagonal


#III. clases, coercion y valores logicos

verdadero <- as.logical("true") #almacena true convertido a valor logico
verdadero
as.logical("falso") #no puede coaccionarlo a logical
class(prodCruz) #numeric
