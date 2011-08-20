package GUI;

import InspectorXWebserv.ArrayOfItemTaxonomia;
import InspectorXWebserv.ArrayOfItemTaxonomiaEntity;
import InspectorXWebserv.InserirTaxonomia;
import InspectorXWebserv.ItemTaxonomia;
import InspectorXWebserv.ItemTaxonomiaEntity;
import InspectorXWebserv.Taxonomia;
import java.util.List;
import javax.swing.JOptionPane;

public class AdicionarTaxonomia extends javax.swing.JFrame 
{

    Taxonomia Tax;
    List<ItemTaxonomiaEntity> itemsTaxList;
    
    public AdicionarTaxonomia() 
    {
        initComponents();
    }
    
    public AdicionarTaxonomia(Taxonomia tax) 
    {
        initComponents();
        Tax=tax;
        txf_taxonomiaNome.setText(tax.getTNome());
        lbl_Nome.setEnabled(false);
        txf_taxonomiaNome.setEnabled(false);
        btn_CriarTaxonomia.setEnabled(false);
         setItemsList();
    }


    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblTaxonomiaTitle = new javax.swing.JLabel();
        lbl_Nome = new javax.swing.JLabel();
        txf_taxonomiaNome = new javax.swing.JTextField();
        btn_CriarTaxonomia = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        lst_DefitosList = new javax.swing.JList();
        pnl_Taxonomia = new javax.swing.JPanel();
        btnInserirItemTaxonomia = new javax.swing.JButton();
        btnDeletarItemTaxonomia = new javax.swing.JButton();
        btn_editarItemTaxonomia = new javax.swing.JButton();
        btn_finalizar = new javax.swing.JButton();
        btn_refresh = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lblTaxonomiaTitle.setFont(new java.awt.Font("Tahoma", 1, 18));
        lblTaxonomiaTitle.setText("Taxonomia");

        lbl_Nome.setText("Nome:");

        btn_CriarTaxonomia.setText("Criar");
        btn_CriarTaxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_CriarTaxonomiaActionPerformed(evt);
            }
        });

        jScrollPane1.setViewportView(lst_DefitosList);

        pnl_Taxonomia.setBorder(javax.swing.BorderFactory.createTitledBorder("Defeitos"));

        btnInserirItemTaxonomia.setText("Inserir");
        btnInserirItemTaxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnInserirItemTaxonomiaActionPerformed(evt);
            }
        });

        btnDeletarItemTaxonomia.setText("Deletar");
        btnDeletarItemTaxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeletarItemTaxonomiaActionPerformed(evt);
            }
        });

        btn_editarItemTaxonomia.setText("Editar");
        btn_editarItemTaxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_editarItemTaxonomiaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pnl_TaxonomiaLayout = new javax.swing.GroupLayout(pnl_Taxonomia);
        pnl_Taxonomia.setLayout(pnl_TaxonomiaLayout);
        pnl_TaxonomiaLayout.setHorizontalGroup(
            pnl_TaxonomiaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnl_TaxonomiaLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(pnl_TaxonomiaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(btnDeletarItemTaxonomia, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_editarItemTaxonomia, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnInserirItemTaxonomia, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        pnl_TaxonomiaLayout.setVerticalGroup(
            pnl_TaxonomiaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnl_TaxonomiaLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnInserirItemTaxonomia)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnDeletarItemTaxonomia)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_editarItemTaxonomia)
                .addContainerGap())
        );

        btn_finalizar.setText("Finalizar");
        btn_finalizar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_finalizarActionPerformed(evt);
            }
        });

        btn_refresh.setText("Refresh");
        btn_refresh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_refreshActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(lbl_Nome)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txf_taxonomiaNome, javax.swing.GroupLayout.DEFAULT_SIZE, 247, Short.MAX_VALUE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(btn_CriarTaxonomia))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(pnl_Taxonomia, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 234, Short.MAX_VALUE))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addComponent(btn_refresh)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 201, Short.MAX_VALUE)
                                .addComponent(btn_finalizar)))
                        .addContainerGap())
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(lblTaxonomiaTitle)
                        .addGap(126, 126, 126))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addComponent(lblTaxonomiaTitle)
                .addGap(37, 37, 37)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_Nome)
                    .addComponent(txf_taxonomiaNome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btn_CriarTaxonomia))
                .addGap(11, 11, 11)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 118, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(pnl_Taxonomia, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_finalizar)
                    .addComponent(btn_refresh))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

private void btn_CriarTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_CriarTaxonomiaActionPerformed
    
    if(inserirTaxonomia(txf_taxonomiaNome.getText().trim()))
    {
        Tax = pegarTaxonomia(txf_taxonomiaNome.getText().trim());
        JOptionPane.showMessageDialog(this,"Taxonomia criada com sucesso!");
    }
    else
    {
        JOptionPane.showMessageDialog(this,"Nome de taxonomia já existente!");
    }
    
    lbl_Nome.setEnabled(false);
    txf_taxonomiaNome.setEnabled(false);
    btn_CriarTaxonomia.setEnabled(false);
    
}//GEN-LAST:event_btn_CriarTaxonomiaActionPerformed

private void btn_finalizarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_finalizarActionPerformed
   this.setVisible(false);
}//GEN-LAST:event_btn_finalizarActionPerformed

private void btn_refreshActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_refreshActionPerformed
    setItemsList();
    
}//GEN-LAST:event_btn_refreshActionPerformed

private void setItemsList()
{
    ArrayOfItemTaxonomiaEntity itemTaxEntity = pegarItemsTaxonomia(Tax.getTID());
    
    itemsTaxList = itemTaxEntity.getItemTaxonomiaEntity();
    lst_DefitosList.setListData(itemsTaxList.toArray());
}

private void btnInserirItemTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInserirItemTaxonomiaActionPerformed
   
   if(Tax !=null)
   {
        AdicionarItemTaxonomia addItemTax = new AdicionarItemTaxonomia(Tax.getTID());
        addItemTax.setVisible(true);
   }
   else
        JOptionPane.showMessageDialog(this,"Nome de taxonomia já existente!");
   
}//GEN-LAST:event_btnInserirItemTaxonomiaActionPerformed

private void btn_editarItemTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_editarItemTaxonomiaActionPerformed
    
}//GEN-LAST:event_btn_editarItemTaxonomiaActionPerformed

private void btnDeletarItemTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeletarItemTaxonomiaActionPerformed
    
    ItemTaxonomiaEntity itemTax = (ItemTaxonomiaEntity)lst_DefitosList.getSelectedValue();
    deletarItemTaxonomia(itemTax.getID());
    setItemsList();
    
}//GEN-LAST:event_btnDeletarItemTaxonomiaActionPerformed

    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnDeletarItemTaxonomia;
    private javax.swing.JButton btnInserirItemTaxonomia;
    private javax.swing.JButton btn_CriarTaxonomia;
    private javax.swing.JButton btn_editarItemTaxonomia;
    private javax.swing.JButton btn_finalizar;
    private javax.swing.JButton btn_refresh;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lblTaxonomiaTitle;
    private javax.swing.JLabel lbl_Nome;
    private javax.swing.JList lst_DefitosList;
    private javax.swing.JPanel pnl_Taxonomia;
    private javax.swing.JTextField txf_taxonomiaNome;
    // End of variables declaration//GEN-END:variables

    private static boolean inserirTaxonomia(java.lang.String nome) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.inserirTaxonomia(nome);
    }

    private static Taxonomia pegarTaxonomia(java.lang.String nome) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.pegarTaxonomia(nome);
    }

    private static ArrayOfItemTaxonomiaEntity pegarItemsTaxonomia(int taxonomiaId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.pegarItemsTaxonomia(taxonomiaId);
    }

    private static boolean deletarItemTaxonomia(int taxonomiaId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.deletarItemTaxonomia(taxonomiaId);
    }

}
