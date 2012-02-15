package InspctX.GUI;

import InspectorXWebserv.ArrayOfItemTaxonomiaEntity;
import InspectorXWebserv.ArrayOfTrechoDefeitoEntity;
import InspectorXWebserv.ItemTaxonomiaEntity;
import InspectorXWebserv.TaxonomiaEntity;
import InspectorXWebserv.TrechoDefeitoEntity;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;

public class SelecaoDefeito extends javax.swing.JFrame 
{

    InserirQuestao insQuestFrame;
    TaxonomiaEntity Tax;
    String Defeito;
    ArrayOfTrechoDefeitoEntity TrechoList;
    
    public SelecaoDefeito(ArrayOfTrechoDefeitoEntity arrayTd,TaxonomiaEntity tax,String defeito,InserirQuestao parentFrame) 
    {
        initComponents();
        Defeito = defeito;
        Tax = tax;
        txf_Taxonomia.setText(tax.getNome());
        TrechoList=arrayTd;
        insQuestFrame = parentFrame;
        
        setComboxDefeitos();
    }


    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lbl_Taxonomia = new javax.swing.JLabel();
        txf_Taxonomia = new javax.swing.JTextField();
        cbx_Defeito = new javax.swing.JComboBox();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        txaExplicacaoDefeito = new javax.swing.JTextArea();
        btnOk = new javax.swing.JButton();
        btnCancelar = new javax.swing.JButton();
        lblSelecionarDefeito = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lbl_Taxonomia.setText("Taxonomia :");

        txf_Taxonomia.setEditable(false);
        txf_Taxonomia.setText("{Taxonomia}");

        cbx_Defeito.setModel(new javax.swing.DefaultComboBoxModel(new String[] { " " }));

        jLabel1.setText("Defeito:");

        jLabel2.setText("Explicação contextual do defeito:");

        txaExplicacaoDefeito.setColumns(20);
        txaExplicacaoDefeito.setRows(5);
        jScrollPane1.setViewportView(txaExplicacaoDefeito);

        btnOk.setText("Ok");
        btnOk.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnOkActionPerformed(evt);
            }
        });

        btnCancelar.setText("Cancelar");
        btnCancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelarActionPerformed(evt);
            }
        });

        lblSelecionarDefeito.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblSelecionarDefeito.setText("Defeito ");

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
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(lbl_Taxonomia)
                                    .addComponent(jLabel1))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(cbx_Defeito, javax.swing.GroupLayout.PREFERRED_SIZE, 144, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txf_Taxonomia, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 158, Short.MAX_VALUE))
                                .addGap(118, 118, 118))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(162, 162, 162)
                                .addComponent(btnCancelar)
                                .addGap(18, 18, 18)
                                .addComponent(btnOk, javax.swing.GroupLayout.PREFERRED_SIZE, 66, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(jLabel2)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(10, 10, 10)
                                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 315, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addContainerGap())
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(lblSelecionarDefeito)
                        .addGap(139, 139, 139))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lblSelecionarDefeito)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 18, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_Taxonomia)
                    .addComponent(txf_Taxonomia, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(11, 11, 11)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cbx_Defeito, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(21, 21, 21)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 108, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnCancelar)
                    .addComponent(btnOk))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnOkActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnOkActionPerformed
        
        if((cbx_Defeito.getSelectedItem()!=null)&&!txaExplicacaoDefeito.getText().trim().isEmpty()) {
            TrechoDefeitoEntity trecho = new TrechoDefeitoEntity();
            
            trecho.setConteudo(Defeito);
            trecho.setExplicacao(txaExplicacaoDefeito.getText());
            
            ItemTaxonomiaEntity itemTax = (ItemTaxonomiaEntity)cbx_Defeito.getSelectedItem();
            trecho.setITID(itemTax.getID());
            
            TrechoList.getTrechoDefeitoEntity().add(trecho);
            insQuestFrame.lst_DefeitosSelecionados.setListData(TrechoList.getTrechoDefeitoEntity().toArray());
            
            JOptionPane.showMessageDialog(this, "Defeito registrado com sucesso!");
            
            this.setVisible(false);
        } else
            JOptionPane.showMessageDialog(this, "Por favor preencha todos os campos!");
}//GEN-LAST:event_btnOkActionPerformed

    private void btnCancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelarActionPerformed
        this.setVisible(false);
}//GEN-LAST:event_btnCancelarActionPerformed

    private void setComboxDefeitos()
    {
        DefaultComboBoxModel theModel = (DefaultComboBoxModel)cbx_Defeito.getModel();
        theModel.removeAllElements();

        ArrayOfItemTaxonomiaEntity itemTaxArray = pegarItemsTaxonomia(Tax.getID());

        List<ItemTaxonomiaEntity> taxList = itemTaxArray.getItemTaxonomiaEntity();

        for(ItemTaxonomiaEntity itxe : taxList)
        {
            cbx_Defeito.addItem(itxe);
        }
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCancelar;
    private javax.swing.JButton btnOk;
    private javax.swing.JComboBox cbx_Defeito;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lblSelecionarDefeito;
    private javax.swing.JLabel lbl_Taxonomia;
    private javax.swing.JTextArea txaExplicacaoDefeito;
    private javax.swing.JTextField txf_Taxonomia;
    // End of variables declaration//GEN-END:variables

    private static ArrayOfItemTaxonomiaEntity pegarItemsTaxonomia(int taxonomiaId) 
    {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.pegarItemsTaxonomia(taxonomiaId);
    }


}
