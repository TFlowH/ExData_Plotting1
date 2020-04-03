############################################################################
############################################################################
###                                                                      ###
###                             Plot 4                                   ###
###                                                                      ###
############################################################################
############################################################################

#Please first run the data preperation file

##################################################################
##                       Start the Plots                        ##
##################################################################
png(file="03_Output/plot4.png"
    ,width=480
    ,height=480)
par(mfrow = c(2,2))

##---------------------------------------------------------------
##                      Create the first Plot                   -
##---------------------------------------------------------------
plot(data$DateTime
     , data$Global_active_power
     , type = "l"
     , ylab = "Global Active Power"
     , xlab = "")

##---------------------------------------------------------------
##                      Create the second Plot                   -
##---------------------------------------------------------------
plot(data$DateTime
     , data$Voltage
     , type = "l"
     , ylab = "Voltage"
     , xlab = "datetime")

##---------------------------------------------------------------
##                      Create the third Plot                   -
##---------------------------------------------------------------
plot(data$DateTime
     , data$Sub_metering_1
     , type = "l"
     , ylab = "Energy sub metering"
     , xlab = "")
lines(data$DateTime,
      data$Sub_metering_2 
      ,col="Red")
lines(data$DateTime
      , data$Sub_metering_3 
      ,col="Blue")

#Legend
legend("topright"
       , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
       , col = c("black","red", "blue")
       , border=NULL
       , lty = c(1,1)
       , bty="n") 

##---------------------------------------------------------------
##                      Create the last Plot                    -
##---------------------------------------------------------------

plot(data$DateTime
     , data$Global_reactive_power
     , type = "l"
     , ylab = "Global_reactive_power"
     , xlab = "datetime")

##---------------------------------------------------------------
##                    End all Plots                             -
##---------------------------------------------------------------
dev.off()
