/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package credit.calification.controllers;


import credit.calification.views.AplicationForm;


public class CreditController {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("entro al main");
        AplicationForm zooView = new AplicationForm();
    
        MotorController motorController = new MotorController();        
        EventHandler eventController = new EventHandler(zooView);
        
        zooView.setMotorController(motorController);
        
        motorController.addEscuchador(eventController);
        
        motorController.ejecutar();
        
    }
    
}
