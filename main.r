rm(list = ls())



n <- as.integer(readline(prompt="le nombres des points: "))	
a <- as.integer(readline(prompt="le min de l'interval: "))
b <- as.integer(readline(prompt="le max de l'interval: "))
x <-matrix(ncol=1,nrow=n,byrow=FALSE) 
for(i in 1:n){
 x[i, ]=(b^i-a^i)/i
}
print("enter les points Xi")
my_element_list <- c()
for(i in 1:n){
my_element_list <- c(my_element_list,as.integer(readline()))
}
print("enter les images f(Xi)")
pointsList <- c()
for(i in 1:n){
pointsList <- c(pointsLisr,as.integer(readline()))
}




element_length=length(my_element_list)

myMatrix <- matrix(,nrow=element_length, ncol=1,byrow = TRUE)


my_column <- list()
my_columns <- list()

index_of_columns <- 1
index_of_column <-1


for (element in my_element_list){



  for(power  in 0:element_length)
 {
 my_column[[index_of_column]] <- element^(power)
 index_of_column <- index_of_column+1
 }
 my_columns[[index_of_columns]] <- my_column
 index_of_columns <- index_of_columns + 1
 index_of_column <- 1
 my_column <- list()
 }
 
 
 my_tuple=c()
 for (liste in my_columns) {
     
     print(liste)
  
  my_tuple <- c(my_tuple,liste[[1]])
my_tuple <- c(my_tuple,liste[[2]])
my_tuple <- c(my_tuple,liste[[3]])
 
 
 }   
 
 
 main_matrix  <- matrix(my_tuple,nrow = element_length,ncol = element_length,byrow = FALSE)
