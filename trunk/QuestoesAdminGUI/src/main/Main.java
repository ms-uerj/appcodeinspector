/**
 *
 * @author Evandro Luiz
 * @
 */
package main;

import InspctX.GUI.AdminMenu;
import javax.swing.UIManager;

public class Main extends javax.swing.JApplet {

    /** Inicializa o applet */
  
    @Override
    public void init() 
    {
        try 
        {
            UIManager.setLookAndFeel("com.sun.java.swing.plaf.windows.WindowsLookAndFeel");
            //setSize(862,500);
            getContentPane().removeAll();
            new AdminMenu().setVisible(true);
        }
        catch (Exception e) 
        {
            System.out.println(e.getMessage());
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setStub(null);
        getContentPane().setLayout(null);
    }// </editor-fold>//GEN-END:initComponents

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
