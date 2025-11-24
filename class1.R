#### welcome to R programming
#assigning single elements
clients<-100
#display output of clients
print(clients)
#assigning multiple elements
salary<-c(140,240,200,160,360)
advt<-c(120,230,240)
print(advt)
print(salary)
#numeric vectors
#arithmetic operations
lagos<-c(100,301,350);ahoada<-c(104,430,340)#multiple codes in  one line with the use of a terminator ;
print(c(lagos,ahoada))
cat(lagos,ahoada)#concatenations is to add together
?cat #if you are in doubt of a function use "?" with the function and run
lagos+ahoada
print(lagos);print(ahoada)
4-24
5*50
30/6
100%%5#give us remainder which is called modulo
4%%3
#combining elements for arithmetic operations
c(3,5)*2
c(4,2)^c(2,3)
#numeric generations
numeric(10)#gives the count of zeros
seq(10,15,2)
?seq #ask about the sequence function
seq(from=15,to=30,length.out=5)
seq(from=15, to=30, by =2)
#random number generations
runif(5,10,50)
rnorm(6,0,3)
x<-rnorm(5,0.2,1.6)
print(x)
#remove the negative values and correct 2.dp
x<-abs(round(x,2))
print(x)
#comparisons operators
5>2
10==10
10!=10
c(2,4)>c(5,2)
print(lagos)
print(ahoada)
100 %in% lagos #using the %in% operator
249 %in%lagos
print(lagos)
# ampersand &, vectorized & , univariant and &&, | vectorized or, univariant or ||
c(TRUE,FALSE) & c(F,T)
c(T,F) | c(F,T)
#character vectors
cat("Benjamin","Frank")
brands<-c("hp","dell","acer","macbk")
#ask what data it is?
class(brands)
mode(brands)
?mode
is.character(brands)
salaryb<-c("hp","dell",290)
class(salaryb)
typeof(salary)
#convert data types
sales<-c("hp",190,240,22)
class(sales)
sales<-as.numeric(sales)
class(sales)
print(sales)
#logical vectors
T | F
T & T
T & F
F & T
#named vectors
x<-c(mon=100,tues=205,wed=220)
print(x)
#names of the objects
names(x)
#change the names of the objects
names(x)<-c("jan","feb","mar")
print(x)
#subsetting [[]] and $
print(lagos)
x[1]
x["jan"]
x[c(1,3)]
x[1:3]
#update the elements
x[3]<-400
print(x)
names(x)<-c("oct","nov","dec")
x[2]+100
print(x)
trials<-runif(6,100,340)
print(trials)
trials<-round(trials,0)#round to whole numbers
print(trials)
trials[c(3,1,2)]<-c(300,400,500)
print(trials)
#slice it
trialsb<-trials[c(2,4,6)]
print(trials)
paste0("$",trials)
trials[-3] #to remove the index value 3
#matrix
m1<-matrix(1:20,nrow = 4,ncol = 5,byrow = F)
print(m1)
m1[1,2]#reads data based on (R,C)
m1[c(1,3),c(3,4)]
m1[1,]
m1[1,1:5]
m1[,]
m1[2,3]<-30
m1
#create a data frame
person<-data.frame(name=c("kakem","ken","ruth"),
                   age=c(19,21,20),
                   sex=c("F","M","F"),
                   depts=c("Fin","Accnt","Sales"))
print(person)
View(person)
#correction
#show name and age, with age greater than 20
person[person$age>20,c(1,2,4)]
#find max and min age
max(person$age)
attach(person)
min(age)
detach(person)
min(person$age)
#show column of name and age
person[,c(1,2)]
person[,c("name","age")]
#show a summary statistics of age and plot a univariant analysis
summary(person$age)
#plot
hist(person$age,
     main = "Univariant distributions")
boxplot(person$age,horizontal = F)

#get the column names
colnames(person)
#change the column names
colnames(person)<-c("Names","Age","Gender","Depts")
#change the row names to lower case letters or upper case LETTERS
row.names(person)<-LETTERS[1:3]
#change it back to numbers
row.names(person)<-1:nrow(person)
#add columns  to data frame
person<-cbind(person,
              data.frame(scores=seq(50,100,length.out=3)))
#check the structure of the data
str(person)
#change of data type
person$Gender<-as.factor(person$Gender)
mdat <- matrix(c(1,2,3, 11,12,13, 21,22,23), nrow = 3, ncol = 3, byrow = TRUE,
               dimnames = list(c("row1", "row2","row3"),
                               c("C.1", "C.2", "C.3")))
print(mdat)
mdat[c("row1","row3"),"C.3"]

#aqdd rows 
person<-rbind(person,data.frame(Names="Fred",
                                Age=20,
                                Gender=factor("M"),
                                Depts="Accnts",
                                scores=61))
is.factor(person$Gender)

#check the structure of data 
str(person)
person[person$Names=="Fred",]
#to add a year to age of fred
person[4,2]<-21
person[4,2]<-person[4,2]+1
#show gender that are "male"
person[person$Gender=="M",c(1,2,4)]
person[person$Age>=20,1]
#how to create a list
l1<-list(wkdays=1:14,
         customers=round(runif(14,18,35)),
         sales=round(runif(14,500,1000)))
print(l1)
#convert list to data frame
l1<-as.data.frame(l1)
print(l1)
View(l1)

#how to create function
add<-function(x,y){x+y}
is.function(add)
add(2,3)
l1$sales<-add(l1$sales,100)

#generalization of functions
calc<-function(x,y,type){
  if(type=="add"){
    x+y
  }else if(type=="minus"){
    x-y
  }else if(type=="divide"){
    x/y
  }else if(type=="exp"){
    x^y
  }else if(type=="multiply"){
    x*y
  }else{stop("invalid operator")}
}
is.function(calc)
calc(100,10,"add")
calc(10,10,"exp")
calc(2,4,"minus")
calc(1,3,"para")
add(as.Date("2025/11/14"),1)
