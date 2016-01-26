package saibot.airport.finance;

import javax.ejb.Remote;

@Remote
public interface FinanceAircraftMovementReporter {
    
    public void reportAircraftMovemementReporter(AircraftMovement movement);
}
