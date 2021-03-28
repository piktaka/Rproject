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





element_length=length(my_element_list)




my_column <- c()
my_columns <- c()



for (element in my_element_list){



  for(power  in 0:element_length-1)
 {
 

 my_column <- c(my_column,element^(power))
 }
 my_columns <- c(my_column,my_columns)
 my_column <- c()
 }
 
 

 
 
 main_matrix  <- matrix(my_columns,nrow = element_length+1,ncol = element_length,byrow = FALSE)

 main_matrix
 
 
 
 solution <- solve(main_matrix,x)
 solution
 
 
 
