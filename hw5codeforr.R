getwd()
setwd("/Users/zoe/Documents/590/week5\ hw")
getwd()
library(ggplot2)
x=runif(100,min=0,max=1)
y=runif(100,min=0,max=1)
plot(x,y,
     main="scatter plot using R",
     xlab="X value",ylab="Y value",col="blue",lwd=1,lty=2,pch=16)
### use ggplot 
df=data.frame(x = x, y = y)
ggplot(data=df, mapping = aes(x = x, y = y)) + geom_point(color="blue")
+xlab("X value")+ylab("Y value")+labs(title="scatter plot using ggplot2")
#### plotly
library(plotly)
df=data.frame(x = x, y = y)
p=ggplot(data=df, mapping = aes(x = x, y = y)) + geom_point(color="blue")
+xlab("X value")+ylab("Y value")
ggplotly(p)
