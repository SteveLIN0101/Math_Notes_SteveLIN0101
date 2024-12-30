# Proportional Odds Models

# Example in MASS, the response variable is ordinal, 
# representing the satisfaction of householders with their
# present housing circumstances
library(MASS)
data(housing)
model_polr <- polr(Sat ~ ., data = housing,
                   Hess = TRUE)
summary(model_polr)
predicted_probs <- predict(model_polr, type = "probs")
print(predicted_probs)

# Example in VGAM
library(VGAM)
model_vglm <- vglm(Sat ~ ., family = cumulative(parallel = TRUE),
                   data = housing)
summary(model_vglm)
predicted_probs <- predict(model_vglm, type = "response")
print(predicted_probs)

# Example in rms
library(rms)
model_lrm <- lrm(Sat ~., data = housing, x=TRUE, y=TRUE)
model_lrm
predicted_probs <- predict(model_lrm, type = "fitted")
print(predicted_probs)

# Example in ordinal
library(ordinal)
model_clm <- clm(Sat ~ ., data = housing)
summary(model_clm)
predicted_probs <- predict(model_clm, type = "prob")
print(predicted_probs)
