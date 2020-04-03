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
plot(plotdata$DateTime
     , plotdata$Global_active_power
     , type = "l"
     , ylab = "Global Active Power"
     , xlab = "")

##---------------------------------------------------------------
##                      Create the second Plot                   -
##---------------------------------------------------------------
plot(plotdata$DateTime
     , plotdata$Voltage
     , type = "l"
     , ylab = "Voltage"
     , xlab = "datetime")

##---------------------------------------------------------------
##                      Create the third Plot                   -
##---------------------------------------------------------------
plot(plotdata$DateTime
     , plotdata$Sub_metering_1
     , type = "l"
     , ylab = "Energy sub metering"
     , xlab = "")
lines(plotdata$DateTime,
      plotdata$Sub_metering_2 
      ,col="Red")
lines(plotdata$DateTime
      , plotdata$Sub_metering_3 
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

plot(plotdata$DateTime
     , plotdata$Global_reactive_power
     , type = "l"
     , ylab = "Global_reactive_power"
     , xlab = "datetime")

##---------------------------------------------------------------
##                    End all Plots                             -
##---------------------------------------------------------------
dev.off()
