package GUI;

import InspectorXWebserv.ArrayOfItemTaxonomiaEntity;
import InspectorXWebserv.ItemTaxonomiaEntity;
import InspectorXWebserv.Questao;
import InspectorXWebserv.Taxonomia;
import InspectorXWebserv.TrechoDefeito;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JFrame;
import javax.swing.JOptionPane;


public class SelectedDefect extends javax.swing.JPanel 
{

    InserirQuestao insQuestFrame;
    Taxonomia Tax;
    String Defeito;

    public SelectedDefect(InserirQuestao insQuestao,Taxonomia tax, String defeito) 
    {
        initComponents();
        Defeito = defeito;
        Tax = tax;
        //setComboxDefeitos();

    }


    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        cbx_Defeito = new javax.swing.JComboBox();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        txaExplicacaoDefeito = new javax.swing.JTextArea();
        btnOk = new javax.swing.JButton();
        btnCancelar = new javax.swing.JButton();
        lblSelecionarDefeito = new javax.swing.JLabel();
        lbl_Taxonomia = new javax.swing.JLabel();
        txf_Taxonomia = new javax.swing.JTextField();

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

        lblSelecionarDefeito.setFont(new java.awt.Font("Tahoma", 0, 18));
        lblSelecionarDefeito.setText("Defeito ");

        lbl_Taxonomia.setText("Taxonomia :");

        txf_Taxonomia.setEditable(false);
        txf_Taxonomia.setText("{Taxonomia}");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lbl_Taxonomia)
                            .addComponent(jLabel1))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(txf_Taxonomia, javax.swing.GroupLayout.DEFAULT_SIZE, 90, Short.MAX_VALUE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 54, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(cbx_Defeito, javax.swing.GroupLayout.PREFERRED_SIZE, 144, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(128, 128, 128))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(162, 162, 162)
                                .addComponent(btnCancelar)
                                .addGap(18, 18, 18)
                                .addComponent(btnOk, javax.swing.GroupLayout.PREFERRED_SIZE, 66, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(10, 10, 10)
                                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 315, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
            .addGroup(layout.createSequentialGroup()
                .addGap(134, 134, 134)
                .addComponent(lblSelecionarDefeito)
                .addContainerGap(149, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lblSelecionarDefeito)
                .addGap(27, 27, 27)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_Taxonomia)
                    .addComponent(txf_Taxonomia, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(11, 11, 11)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cbx_Defeito, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(28, 28, 28)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 108, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(11, 11, 11)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnCancelar)
                    .addComponent(btnOk))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void btnCancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelarActionPerformed
        this.setVisible(false);
    }//GEN-LAST:event_btnCancelarActionPerformed

private void btnOkActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnOkActionPerformed
    
    if((cbx_Defeito.getSelectedItem()!=null)&&!txaExplicacaoDefeito.getText().trim().isEmpty())
    {
        TrechoDefeito trecho = new TrechoDefeito();
        
        trecho.setDConteudo(Defeito);
        trecho.setDExplicacao(txaExplicacaoDefeito.getText());
        
        ItemTaxonomiaEntity itemTax = (ItemTaxonomiaEntity)cbx_Defeito.getSelectedItem();
        trecho.setITID(itemTax.getID());
        
        insQuestFrame.trechoList.getTrechoDefeito().add(trecho);
        
        JOptionPane.showMessageDialog(this, "Defeito registrado com sucesso!");
        this.setVisible(false);
    }   
    else
        JOptionPane.showMessageDialog(this, "Por favor preencha todos os campos!");    
}//GEN-LAST:event_btnOkActionPerformed

    private void setComboxDefeitos()
    {
        DefaultComboBoxModel theModel = (DefaultComboBoxModel)cbx_Defeito.getModel();
        theModel.removeAllElements();
        
        ArrayOfItemTaxonomiaEntity itemTaxArray = pegarItemsTaxonomia(Tax.getTID());

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
