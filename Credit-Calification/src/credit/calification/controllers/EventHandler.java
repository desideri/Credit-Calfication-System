package credit.calification.controllers;

import credit.calification.util.Helper;
import credit.calification.views.AplicationForm;
import jess.*;

/**
 * Grupo 10: 
 * @author: Kattya Desiderio
 * @author: Stephany Quimba
 * @author: Joyce Sarmiento
 * @version: 06/02/2016/
 */

public class EventHandler implements JessListener{

    AplicationForm vista;
    int contFired = 0;
    public EventHandler( AplicationForm vista) {
        this.vista = vista;
    }

    @Override
    public void eventHappened(JessEvent je){
        int type = je.getType();
        Rete rete = (Rete)je.getSource();
        Context context = je.getContext();
        Helper helper = new Helper(rete);

        if(type == JessEvent.DEFRULE_FIRED){
//            System.out.println("Regla: "+contFired);
//            contFired++;
//           Fact nodoActual = helper.findFactByTempleteName("MAIN::nodo-actual");
//            if (nodoActual != null){
//                String slotV;
//                Fact nodo = null;
//                try {
//                    slotV = nodoActual.get(0).toString();
//                    nodo = helper.findFactByTemplateName("MAIN::Nodo", "nombre", slotV);
//                    if (nodo != null){
//                        String tipo = nodo.getSlotValue("tipo").stringValue(context);
////                        System.out.println(tipo);
//                        if (tipo.equals("pregunta")){
//                            String pregunta = nodo.getSlotValue("pregunta").stringValue(context);
////                            System.out.println(pregunta);
//                            vista.cambiarPregunta(pregunta);
//                        }else if(tipo.equals("respuesta")){
//                            String respuesta = nodo.getSlotValue("respuesta").stringValue(context);
////                            System.out.println(respuesta);
//                            vista.darRespuesta("El animal es: "+respuesta);
//                        }
//                    }
//                } catch (JessException e) {
//                    e.printStackTrace();
//                }
//            }
        }
        
    }
    
}
