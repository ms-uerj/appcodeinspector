/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package InspctX.Componentes;

import InspctX.GUI.AdicionarTaxonomia;
import InspectorXWebserv.ArrayOfItemTaxonomiaEntity;
import InspectorXWebserv.ArrayOfTaxonomiaEntity;
import InspectorXWebserv.ItemTaxonomiaEntity;
import InspectorXWebserv.TaxonomiaEntity;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;

/**
 *
 * @author Enuma
 */
public class TaxonomiasAdmin extends javax.swing.JPanel {

    /**
     * Creates new form TaxonomiasAdmin
     */
    public TaxonomiasAdmin() {
        initComponents();
    }


    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btn_refreshTaxonomia = new javax.swing.JButton();
        cbx_Taxonomia = new javax.swing.JComboBox();
        lblTaxonomiaSelecionada = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        btnInserirTaxonomia = new javax.swing.JButton();
        btnDeletarTaxonomia = new javax.swing.JButton();
        btn_editarTaxonomia = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        lst_itemsTaxonomia = new javax.swing.JList();
        jLabel1 = new javax.swing.JLabel();

        btn_refreshTaxonomia.setText("Refresh");
        btn_refreshTaxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_refreshTaxonomiaActionPerformed(evt);
            }
        });

        cbx_Taxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbx_TaxonomiaActionPerformed(evt);
            }
        });

        lblTaxonomiaSelecionada.setText("Selecionar:");

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("Opções"));

        btnInserirTaxonomia.setText("Inserir");
        btnInserirTaxonomia.setToolTipText("Inserir nova taxonomia");
        btnInserirTaxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnInserirTaxonomiaActionPerformed(evt);
            }
        });

        btnDeletarTaxonomia.setText("Deletar");
        btnDeletarTaxonomia.setToolTipText("Deletar taxonomia selecionada");
        btnDeletarTaxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeletarTaxonomiaActionPerformed(evt);
            }
        });

        btn_editarTaxonomia.setText("Editar");
        btn_editarTaxonomia.setToolTipText("Editar taxonomia selecionada");
        btn_editarTaxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_editarTaxonomiaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(btnDeletarTaxonomia, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_editarTaxonomia, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnInserirTaxonomia, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnInserirTaxonomia)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnDeletarTaxonomia)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_editarTaxonomia)
                .addContainerGap())
        );

        jScrollPane2.setViewportView(lst_itemsTaxonomia);

        jLabel1.setText("Definições presentes:");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btn_refreshTaxonomia))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 275, Short.MAX_VALUE)
                            .addComponent(jLabel1)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(9, 9, 9)
                        .addComponent(lblTaxonomiaSelecionada)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(cbx_Taxonomia, javax.swing.GroupLayout.PREFERRED_SIZE, 143, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(5, 5, 5)
                .addComponent(btn_refreshTaxonomia)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cbx_Taxonomia, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblTaxonomiaSelecionada))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addGap(1, 1, 1)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 214, Short.MAX_VALUE))
                    .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents

    private void btn_refreshTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_refreshTaxonomiaActionPerformed

        setTaxonomiaComboBox();
        lst_itemsTaxonomia.setListData(new Object[0]);
        
    }//GEN-LAST:event_btn_refreshTaxonomiaActionPerformed

    private void cbx_TaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbx_TaxonomiaActionPerformed
        setItemTaxonomiaList();

    }//GEN-LAST:event_cbx_TaxonomiaActionPerformed

    private void btnInserirTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInserirTaxonomiaActionPerformed

        AdicionarTaxonomia addTax = new AdicionarTaxonomia(this);
        addTax.setVisible(true);

    }//GEN-LAST:event_btnInserirTaxonomiaActionPerformed

    private void btnDeletarTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeletarTaxonomiaActionPerformed
        try {
            TaxonomiaEntity tax = (TaxonomiaEntity) cbx_Taxonomia.getSelectedItem();
            ArrayOfItemTaxonomiaEntity itemTaxEntity = pegarItemsTaxonomia(tax.getID());

            List<ItemTaxonomiaEntity> itemTaxList = itemTaxEntity.getItemTaxonomiaEntity();

            if (!itemTaxList.isEmpty()) {
                for (ItemTaxonomiaEntity it : itemTaxList) {
                    deletarItemTaxonomia(it.getID());
                }
            }

            deletarTaxonomias(tax.getID());
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(this, ex.getMessage());
        }

    }//GEN-LAST:event_btnDeletarTaxonomiaActionPerformed

    private void btn_editarTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_editarTaxonomiaActionPerformed

        TaxonomiaEntity tax = (TaxonomiaEntity) cbx_Taxonomia.getSelectedItem();

        AdicionarTaxonomia addTax = new AdicionarTaxonomia(this, tax);
        addTax.setVisible(true);

    }//GEN-LAST:event_btn_editarTaxonomiaActionPerformed

    public void setTaxonomiaComboBox()
    {
        try
        {
            DefaultComboBoxModel theModel = (DefaultComboBoxModel)cbx_Taxonomia.getModel();
            theModel.removeAllElements();

            ArrayOfTaxonomiaEntity taxArray = pegarTaxonomias();

            List<TaxonomiaEntity> taxList = taxArray.getTaxonomiaEntity();

            for(TaxonomiaEntity txe : taxList)
            {
                cbx_Taxonomia.addItem(txe);
            }

        }
        catch(Exception ex)
        {
            JOptionPane.showMessageDialog(this, ex);
        }
    }
    
    private void setItemTaxonomiaList()
    {
        try 
        {
            TaxonomiaEntity tax = (TaxonomiaEntity)cbx_Taxonomia.getSelectedItem();
            lst_itemsTaxonomia.setListData(new Object[0]);
            if(tax!=null)
            {
                ArrayOfItemTaxonomiaEntity itemTaxEntityArray = pegarItemsTaxonomia(tax.getID());
                List<ItemTaxonomiaEntity> itemTaxList = itemTaxEntityArray.getItemTaxonomiaEntity();
                if(!itemTaxList.isEmpty())
                    lst_itemsTaxonomia.setListData(itemTaxList.toArray());

            }
        } 
        catch (Exception ex) 
        {
            JOptionPane.showMessageDialog(this, ex.getMessage());
        }
    }
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton btnDeletarTaxonomia;
    public javax.swing.JButton btnInserirTaxonomia;
    public javax.swing.JButton btn_editarTaxonomia;
    private javax.swing.JButton btn_refreshTaxonomia;
    private javax.swing.JComboBox cbx_Taxonomia;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JLabel lblTaxonomiaSelecionada;
    private javax.swing.JList lst_itemsTaxonomia;
    // End of variables declaration//GEN-END:variables

    private static ArrayOfTaxonomiaEntity pegarTaxonomias() {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.pegarTaxonomias();
    }

    private static boolean deletarItemTaxonomia(int taxonomiaId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.deletarItemTaxonomia(taxonomiaId);
    }
    
    private static boolean deletarTaxonomias(int taxonomia) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.deletarTaxonomias(taxonomia);
    }
 
    private static ArrayOfItemTaxonomiaEntity pegarItemsTaxonomia(int taxonomiaId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.pegarItemsTaxonomia(taxonomiaId);
    }
    
}
