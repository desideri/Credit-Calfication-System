package credit.calification.controllers;

import java.util.logging.Level;
import java.util.logging.Logger;
import jess.JessEvent;
import jess.JessException;
import jess.Rete;

/**
 * Grupo 10: 
 * @author: Kattya Desiderio
 * @author: Stephany Quimba
 * @author: Joyce Sarmiento
 * @version: 06/02/2016/
 */

public class MotorController{
    Rete motor;

    public MotorController() {
        try {
            motor = new Rete();
            motor.reset();
            motor.batch("credit/calification/clips/credito.clp");
            //motor.run();
        } catch (JessException ex) {
            Logger.getLogger(MotorController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void afirmar(String hecho) throws JessException{
        motor.assertString(hecho);
        motor.run();
    }
    
    public void addEscuchador(EventHandler eventController){
        motor.addJessListener(eventController);
        motor.setEventMask(JessEvent.DEFRULE_FIRED);
    }
    
    public void ejecutar(){
        try {
            this.motor.run();
        } catch (JessException ex) {
            Logger.getLogger(MotorController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
