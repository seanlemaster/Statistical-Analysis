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

Glue3=t(glue2)   ## transpose the matrix. Invert rows and columns.
Glue3

dim(glue2)  ## tells you the number of rows and columns.

class(glue2) # provides the class of the object (which should be ‘matrix’)

## Exercise 7

a=seq(1,10,by=2)
a

b=seq(10,1,by=-2)
b

c=rep(0,5)
c

seven=rbind(a,b,c)
seven

seventrue=t(seven)
seventrue

colnames(seventrue)=c("A", "B", "C")
rownames(seventrue)=c("a", "b", "c", "d", "e")

seventrue


### Dataframes: matrix, but rows correspond to characters (observations) and columns corresponod to variables.

var1=c(1:10)
var2=sample(50:100, 10)
var3=factor(c(rep("a",2), rep("b",5), rep("c",3)))
DF=data.frame(var3,var2,var1)
DF

class(DF) # object class (‘dataframe’)

dim(DF) # number of observations and variables

names(DF) # variable names (i.e., column names)

str(DF) # provides information on the structure of the data frame

summary(DF) # returns summary statistics for each variable in the data frame (note the difference in numeric and categorical variables)

## Exercise 8

var1=seq(2:100,by=2)
var1

var2=rep(c(TRUE, FALSE), times=c(30,20))
var2

var3=rep(c("V","W","X","Y","Z"), times=10)
var3

DF=data.frame(var3,var2,var1)
DF

str(DF) # provides information on the structure of the data frame

summary(DF) # returns summary statistics for each variable in the data frame (note the difference in numeric and categorical variables)


## Using working directories 

data=read.table("alkfos.txt", header=T) # to open a file in your working directory
          
str(data) # to analyze the data 

summary(data)

# to transform a variable from character to factor
data$grp=factor(data$grp)

rownames(data) ## tells you the names of rows in your dataframe.

## this is how to export a new datafile using the previous one.
write.table(data, "data_new.txt", sep="/t", col.names = T,
            row.names=F, quote=T)


## how to select and change elements within dataframes and matrices 

data[1,1] # extracts the data from row 1, column 1

data[1:3, 2:5] # extracts the first three elements in columns 2 to 5

data[1,] # extracts all the elments of the first row 

data[,1] # extracts all the elments of the first column

dat[,c(1,3,5)] # extracts columns 1, 3, and 5. 

dat[,-c(1,3,5)] # extracts all columns BUT 1, 3, and 5. 

## writing data[,2] is the same as writing data$c0, by specifying its vairable name. 




                   
                   
                   
