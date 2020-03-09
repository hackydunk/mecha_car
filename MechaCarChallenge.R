# MPG Regression
mecha_cars = read.csv('MechaCar_mpg.csv')
model = lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=mecha_cars) #generate multiple linear regression model
summary(model)

# suspensions summary
suspension = read.csv('Suspension_Coil.csv')

library(pastecs)
res <- stat.desc(suspension)
res$PSI = round(res$PSI, 2)

t.test(suspension$PSI,mu=1500)
