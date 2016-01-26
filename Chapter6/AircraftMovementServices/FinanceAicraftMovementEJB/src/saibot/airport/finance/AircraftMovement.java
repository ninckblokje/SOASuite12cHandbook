package saibot.airport.finance;

import java.io.Serializable;

public class AircraftMovement implements Serializable {
    @SuppressWarnings("compatibility:-3405153744412296325")
    private static final long serialVersionUID = 1L;
    
    Integer flightNumber;
    
    public Integer getFlightNumber() {
        return flightNumber;
    }
    
    public void setFlightNumber(Integer flightNumber) {
        this.flightNumber = flightNumber;
    }

    public String toString() {
        return AircraftMovement
                .class
                .getName()
            + flightNumber
               .toString();
    }
}
