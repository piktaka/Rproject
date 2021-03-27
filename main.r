
rm(list = ls())

my_element_list <- list(3,2,1)


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
