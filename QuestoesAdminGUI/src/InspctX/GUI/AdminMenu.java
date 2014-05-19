package InspctX.GUI;

import InspectorXWebserv.ArrayOfQuestaoEntity;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

public class AdminMenu extends javax.swing.JFrame {

    public AdminMenu() 
    {
        initComponents();
        pnl_TaxonomiaAdmin.setTaxonomiaComboBox();
        pnl_QuestoesAdmin.setTaxonomiaCombobox();
        setLocationRelativeTo(null);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        tbp_Admin = new javax.swing.JTabbedPane();
        pnl_TaxonomiaAdmin = new InspctX.Componentes.TaxonomiasAdminPanel();
        pnl_QuestoesAdmin = new InspctX.Componentes.QuestoesAdminPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("InspectorX Artifact Manager");

        tbp_Admin.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                tbp_AdminStateChanged(evt);
            }
        });
        tbp_Admin.addTab("Taxonomy", pnl_TaxonomiaAdmin);
        tbp_Admin.addTab("Artifacts", pnl_QuestoesAdmin);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(tbp_Admin, javax.swing.GroupLayout.Alignment.TRAILING)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(tbp_Admin, javax.swing.GroupLayout.PREFERRED_SIZE, 477, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tbp_AdminStateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_tbp_AdminStateChanged
        pnl_TaxonomiaAdmin.setTaxonomiaComboBox();
        pnl_QuestoesAdmin.setTaxonomiaCombobox();  
    }//GEN-LAST:event_tbp_AdminStateChanged

    public void setQuestaoList()
    {
        try 
        {
	    int qtdRequisicoes = 1000;
	    long startTime = System.currentTimeMillis();
	    for (int i = 0; i < qtdRequisicoes; i++) {
		ArrayOfQuestaoEntity questaoEntity = getQuestoesTaxList(17);
	    }
	    
	    long finishTime = System.currentTimeMillis();
	    JOptionPane.showMessageDialog(this, "Tempo para "+qtdRequisicoes+" requisições: " + (finishTime - startTime)+" ms");

        } 
        catch (Exception ex) 
        {
            JOptionPane.showMessageDialog(this, ex.getMessage());
        }
        
    }
	
public static void main(String args[]) {
    java.awt.EventQueue.invokeLater(new Runnable() {
    
            @Override
        public void run() {
                try {
                    UIManager.setLookAndFeel("com.sun.java.swing.plaf.windows.WindowsLookAndFeel");
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(AdminMenu.class.getName()).log(Level.SEVERE, null, ex);
                } catch (InstantiationException ex) {
                    Logger.getLogger(AdminMenu.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(AdminMenu.class.getName()).log(Level.SEVERE, null, ex);
                } catch (UnsupportedLookAndFeelException ex) {
                    Logger.getLogger(AdminMenu.class.getName()).log(Level.SEVERE, null, ex);
                }
            new AdminMenu().setVisible(true);
        }
    });
}


    
    private static ArrayOfQuestaoEntity getQuestoesTaxList(int taxId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.getQuestoesTaxList(taxId);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private InspctX.Componentes.QuestoesAdminPanel pnl_QuestoesAdmin;
    private InspctX.Componentes.TaxonomiasAdminPanel pnl_TaxonomiaAdmin;
    private javax.swing.JTabbedPane tbp_Admin;
    // End of variables declaration//GEN-END:variables

}

