#There are multiple different data types
#Characters
msg <- "Assigned chracters"
#logical
a<-c(TRUE,FALSE,FALSE,TRUE,FALSE)
a1<-c(T,F,F,T,F)
#numeric
b<-c(1.52,2.75724,7)
#Integer
c<-12L
#complex
d<-321i
#Printing something on console using the print()
print(a)

#every assignment leads to an Vector, the differnce is how many items it contains, assigning only 1 = 1 dimensional vector with one at number 1
#Vectors can only handle one class
e <- 1
#Creating Vectors using the vector()
f<- vector("numeric",length=20)
#Creating vectors using the c() --> c stands for coercion
f<-c(1:20) #assigning values from 1 to 20 to the vector --> in the end the vector consists of 20 fields with 1 value assigned to each field

#By assigning different data types to a vector it tries to convert everything to the most common data type (implicit coersion)
#Types of coersion (coersion happens in background and won´t create an error)
g<-c(1.1, 2) #numeric vector (integer has been converted to numeric)
h<-c("a", TRUE) #character vector (TRUE will be converted to characters TRUE)
i<-c(1, TRUE)#numeric vector
j<-c(1.0, FALSE)#character vector

#explicit coersion
class(j) #shows the class before coersion
k<-as.logical(j) #the as expression converts the numeric values into logical values
k #print the results
class(k) #show class of the results
#if R isn´t able to coerce something the result will be a NA vector!!!

#List is can contain different classes
l<-list(1,"a",TRUE,84.4,15+324i,FALSE) #it will box every element to a vector only containing the class of the element -> kinda box in a box
l

#matrices are special type of vectors
#Matrices have 2 dimension attributes, first is row and second is column
m<-matrix(nrow = 4,ncol = 4) #this will be a 4x4 matrix
dim(m) #show how many dimensions there are
attributes(m) #shows all available attributes of input variable
m

#matrices are created column-wise
n<-matrix(1:100,nrow=10,ncol=10)
n

#transforming a given vector to a matrix asigning values to the dim attribute
f 
dim(f)<- c(10,2)
f

#other ways to create a matrix 
#1. column-binding
o <- 1:5
p <-1:10
cbind(o,p)
#2. row-binding
rbind(o,p)

#factors are used to display categorized data
#factors are like an vector where each object has a label
#creating a unordered factor
q<-factor(c("sehr gut", "gut", "befriedigend", "ausreichend", "ungenügend", "sehr gut", "sehr gut", "sehr gut")) #attention: levels are case-sensitive
q
table(q) #shows how counter of how many objects are in the factor for each level
#ordering the levels of a factor
levels(q)<-c("sehr gut", "gut", "befriedigend", "ausreichend", "ungenügend")
q
#create an ordered factor 
r<-factor(c("sehr gut", "gut", "befriedigend", "ausreichend", "ungenügend", "sehr gut", "sehr gut", "sehr gut"), levels=c("sehr gut", "gut", "befriedigend", "ausreichend", "ungenügend"))
r

#Missing Values
#undefined mathematical operations --> NAN
#everything else -->NA (can have different classes)
#is checkable with is.na() or is.nan() --> result will be a vector of true and false


