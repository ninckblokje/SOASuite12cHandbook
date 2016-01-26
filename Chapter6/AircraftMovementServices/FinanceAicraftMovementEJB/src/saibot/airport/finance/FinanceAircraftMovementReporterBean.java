package saibot.airport.finance;

import javax.annotation.Resource;

import javax.ejb.SessionContext;
import javax.ejb.Stateless;

@Stateless(name="FinanceAircraftMovementReporterEJB", mappedName="FinanceAircraftMovementReporter")
public class FinanceAircraftMovementReporterBean implements FinanceAircraftMovementReporter {

    @Resource
    SessionContext ctx;

    @Override
    public void reportAircraftMovemementReporter(AircraftMovement movement) {
        System.out.println("Movement: " + movement);
    }
}
