iris
table(iris$Species)
head(iris)
set.seed(9850)
runif(5)
group= runif(nrow(iris))
iris=iris[order(group),]
head(iris,10)
str(iris)
summary(iris[,c(1,2,3,4)])
normal=function(x){
 return((x-min(x))/(max(x)-min(x)))
 }
normal(c(1,2,3,4,5))
iris_new=as.data.frame(lapply(iris[,c(1,2,3,4)],normal))
summary(iris_new)
str(iris)
iris_train=iris_new[1:129,]
iris_test=iris_new[130:150,]
iris_train_target=iris[1:129,5]
iris_test_target=iris[130:150,5]
require(class)
prediction=knn(train=iris_train,test=iris_test,cl=iris_train_target,k=13)
table(iris_test_target,prediction)
plot(prediction)

