library(ggplot2)

data(mtcars)
mtcars

require(graphics)
pairs(mtcars, main = "mtcars data")
coplot(mpg ~ wt | as.factor(gear), data = mtcars,
       panel = panel.smooth, rows = 1)
mean(mtcars$mpg)
x<- c(1:10)
myCyl<- 4

DF<- with(mtcars, subset(mtcars, cyl == myCyl ))

coplot(mpg ~ wt | as.factor(am), data = DF,
       panel = panel.smooth, rows = 1)


runApp(display.mode = 'showcase')

