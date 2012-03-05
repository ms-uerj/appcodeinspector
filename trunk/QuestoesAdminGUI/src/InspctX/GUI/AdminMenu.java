package InspctX.GUI;

import java.util.logging.Level;
import java.util.logging.Logger;
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

        lbl_Title = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jSeparator2 = new javax.swing.JSeparator();
        tbp_Admin = new javax.swing.JTabbedPane();
        pnl_TaxonomiaAdmin = new InspctX.Componentes.TaxonomiasAdmin();
        pnl_QuestoesAdmin = new InspctX.Componentes.QuestoesAdmin();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lbl_Title.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lbl_Title.setText("Administrador de questões e taxonomias do InspectorX");

        tbp_Admin.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                tbp_AdminStateChanged(evt);
            }
        });
        tbp_Admin.addTab("Taxonomias", pnl_TaxonomiaAdmin);
        tbp_Admin.addTab("Questões", pnl_QuestoesAdmin);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(0, 106, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 520, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addComponent(lbl_Title))
                    .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 520, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(89, 89, 89))
            .addComponent(tbp_Admin, javax.swing.GroupLayout.Alignment.TRAILING)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(11, 11, 11)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(9, 9, 9)
                        .addComponent(lbl_Title)))
                .addGap(8, 8, 8)
                .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(tbp_Admin, javax.swing.GroupLayout.DEFAULT_SIZE, 390, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tbp_AdminStateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_tbp_AdminStateChanged
        pnl_TaxonomiaAdmin.setTaxonomiaComboBox();
        pnl_QuestoesAdmin.setTaxonomiaCombobox();  
    }//GEN-LAST:event_tbp_AdminStateChanged


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


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JLabel lbl_Title;
    private InspctX.Componentes.QuestoesAdmin pnl_QuestoesAdmin;
    private InspctX.Componentes.TaxonomiasAdmin pnl_TaxonomiaAdmin;
    private javax.swing.JTabbedPane tbp_Admin;
    // End of variables declaration//GEN-END:variables

}

