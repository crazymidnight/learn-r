library(editrules)
library(deducorrect)
library(VIM)

iris <- read.csv("dirty_iris.csv")
summary(iris)

rules <- editrules::editfile("rules.txt", type = c("all", "num", "cat", "mix"))
rules
violated_iris <- editrules::violatedEdits(rules, iris)

summary(violated_iris)

plot(violated_iris)

boxplot(iris$Sepal.Length)
boxplot.stats(iris$Sepal.Length)
out <- boxplot.stats(iris$Sepal.Length)$out

indices <- match(out, iris$Sepal.Length)
iris$Sepal.Length[indices] <- NA
boxplot(iris$Sepal.Length)

deducorrect::correctWithRules(rules, iris)

err <- localizeErrors(rules, iris, method = "mip")
err
iris[err$adapt] <- NA
violated_iris <- editrules::violatedEdits(rules, iris)
plot(violated_iris)

iris_knn <- VIM::kNN(iris)
iris_knn$Petal.Width

hotdeck_1_iris <- VIM::hotdeck(iris, variable = "Petal.Width", ord_var = "Species")
hotdeck_1_iris$Petal.Width

hotdeck_2_iris <- VIM::hotdeck(iris, variable = "Petal.Width", ord_var = c("Species", "Sepal.Length"))
hotdeck_2_iris$Petal.Width
