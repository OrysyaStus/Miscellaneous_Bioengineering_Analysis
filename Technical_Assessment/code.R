setwd("C:/Users/Orysya/Desktop")
train = read.csv("./A.csv")
test = read.csv("./B.csv")
lr_model <- glm(formula = is_registered_democrat~age+voted_in_2012+adult+hh_income+is_urban+is_owner_of_home, data = train, family = binomial)
lr_model
summary(lr_model)
anova(lr_model, test="Chisq")
#for individual probabilities
result <- predict(lr_model, test, type="response" )
result
#for standard errors
result1 <- predict(lr_model, test, type="link", se=TRUE)
result1
write.csv(result, "C:/Users/Orysya/Desktop/result.csv")