1.Se tiene el siguiente conjunto de datos: 15, 24, 26, 28, 29, 30, 30, 30, 31, 31, 32, 35, elaborar un gráfico de Caja 

2. Se tiene dos conjuntos de datos, el primero corresponde a la estatura de 8 futbolistas, y el segundo corresponde a la estatura de 6 basquetbolistas:  
  
  Futbolistas: 1.83, 1.73, 1.75, 1.69, 1.94, 1.83, 1.81, 2.01 

Basquetbolistas: 2.01, 2.15, 1.90, 2.28, 1.83, 2.1 

Elaborar un gráfico de Caja 



3.Con base en el siguiente conjunto de datos: 40, 50, 65, 85, 75, 90, 60, 60, 60, 75 

Calcule el coeficiente de variación. 



4  Realice una estadística descriptiva con los siguientes datos: 
  
  24, 24, 25, 25, 25, 25, 25, 26, 26, 26, 27, 27, 28, 29, 30 


stripchart(x, method = "jitter", pch = 11, add = TRUE, col = "blue")


x <- c(24, 24, 25, 25, 25, 25, 25, 26, 26, 26, 27, 27, 28, 29, 30)
boxplot(x, vertical = TRUE)

stripchart(x, method = "jitter", pch = 11, add = TRUE, col = "green")






x < - c('black', 'brown', 'white', 'red', 'blue', 'green')
print("Permutations of vector x")
permn(x)

res <- permn(x)
print ("Number of possible permutations : ")
print (length(res))



x <- c('red', 'blue', 'green', 'violet')
print ("Permutations of vector x")

res <- permn(x)
print ("Number of possible permutations : ")
print (length(res))




w <- c(40, 50, 65, 85, 75, 90, 60, 60, 60, 75)

sd(x=w, na.rm=T)


cv <- sd(w) / mean(w) * 100




w <- c(24, 24, 25, 25, 25, 25, 25, 26, 26, 26, 27, 27, 28, 29, 30)

sd(x=w, na.rm=T)





combi_count <- ncol(combinat::combn(5, 4))     # Count combinations
combi_count                                    # Print count of combinations



x < - pbinom(3, 8, 0.3)
print(x)



x <- 42
print(x)





myString <- "Hello World!"
print (myString)