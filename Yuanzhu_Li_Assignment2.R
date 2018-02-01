#Yuanzhu Li
#Assignment2
#1a
tmp <- matrix( c(1,5,-2,1,2,-1,3,6,-3),nr=3)
#1b
tmp[,3]<-tmp[,2]+tmp[,3]
tmp
#2
ps2<-matrix(c(10,-10,10),byrow=TRUE,nc=3,nr=15)
crossprod(tmp)
#3
ps3<- matrix(0,nr=6,nc=6)
ps3[abs(col(ps3)-row(ps3))==1]<-1
ps3
#4
outer(0:4,0:4,"+")
#5
ps5a<-outer(0:4,0:4,"+")%%5
ps5a
ps5b<-outer(0:9,0:9,"+")%%10
ps5b
ps5c<-outer(0:8,0:8,"-")%%9
ps5c
#6
yVec <- c(7,-1,-3,5,17)
Mat6<-matrix(0,nr=5,nc=5)
Mat6<-abs(col(Mat6)-row(Mat6))+1
Mat6
solve(Mat6,yVec)
#7
set.seed(75)
aMat <- matrix( sample(10, size=60, replace=T), nr=6)
aMat
ps7a<-apply(aMat, 1, function(x){sum(x>4)})
ps7a
which(apply(aMat,1,function(x){sum(x==7)==2}) )
aMatColSums <- colSums(aMat)
which(outer(aMatColSums,aMatColSums,"+")>75, arr.ind=T )
#8
ps8a1<-sum(1/(4:8))
ps8a1
ps8a2<-sum((1:20)^4)
ps8a<-ps8a2*ps8a1
ps8a
ps8b<-sum( (1:20)^4 / (3 + outer(1:20,1:5,"*")))
ps8b
ps8c<-sum( outer(1:10,1:10,function(i,j){ (i>=j)*i^4/(3+i*j) }) )
ps8c
