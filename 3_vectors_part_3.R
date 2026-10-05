## Intentionally selecting object out of vectors using []

r=sample(11:20, 5, replace=T)
r

r[1]  ## to select the first element.
a=r[1]  ## assigning the first element 

r[c(1,3)]  ## extracting multiple objects 

r[2:4]  ## another method

## extracting elements that verify  specific condition:

condition=r>16
condition

r[condition]  ## gives you the objects that respect the condition 


## Exercise 6

decimal=seq(1,2, by=0.001)

extract=sample(decimal, 100, replace=F)  #the replace is not necessary, as the default is false. But good to include. 
extract

deciles=quantile(extract, seq(0, 1, 0.1))  ## displaying the data in deciles in increments of 10%.

sort(extract) ## this will organize the data in numeric order. 

condition=deciles>1.4
condition

vector3=deciles[condition]
vector3

quartiles=quantile(vector3, seq(0,1,0.25))  ## compute the quartiles.

### Matrices: ordered, two-dimensional objects built in rows and columns. Elements contained in a matrix must be homogenous.

m=matrix(1:12, nrow=3, byrow= TRUE)
m

a=1:7
b=8:14
glue1=rbind(a,b)
glue1

glue2=cbind(a,b)
colnames(glue2)=c("Column1", "Column2")
rownames(glue2)=c("row1", "row2")






          

                   







                   
                   
                   
