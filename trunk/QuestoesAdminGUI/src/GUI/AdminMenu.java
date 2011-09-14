package GUI;

import InspectorXWebserv.ArrayOfItemTaxonomiaEntity;
import InspectorXWebserv.ArrayOfQuestaoEntity;
import InspectorXWebserv.ArrayOfTaxonomiaEntity;
import InspectorXWebserv.ItemTaxonomiaEntity;
import InspectorXWebserv.QuestaoEntity;
import InspectorXWebserv.TaxonomiaEntity;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;

public class AdminMenu extends javax.swing.JFrame {

    public AdminMenu() {
        initComponents();
        setTaxonomia();
        
        setItemTaxonomiaList();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblTitle = new javax.swing.JLabel();
        pnlTaxonomia = new javax.swing.JPanel();
        lblTaxonomiaSelecionada = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        btnInserirTaxonomia = new javax.swing.JButton();
        btnDeletarTaxonomia = new javax.swing.JButton();
        btn_editarTaxonomia = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        lst_itemsTaxonomia = new javax.swing.JList();
        btn_refreshTaxonomia = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        cbx_Taxonomia = new javax.swing.JComboBox();
        pnl_Questoes = new javax.swing.JPanel();
        jPanel1 = new javax.swing.JPanel();
        btn_InserirQuestao = new javax.swing.JButton();
        btn_DeletarQuestao = new javax.swing.JButton();
        btn_EditarQuestao = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        lstQuestoes = new javax.swing.JList();
        jScrollPane3 = new javax.swing.JScrollPane();
        lstQuestoes1 = new javax.swing.JList();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jSeparator2 = new javax.swing.JSeparator();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lblTitle.setFont(new java.awt.Font("Tahoma", 0, 18));
        lblTitle.setText("Administrador de questões e taxonomias do jogo InspectorX");

        pnlTaxonomia.setBorder(javax.swing.BorderFactory.createTitledBorder("Taxonomias"));

        lblTaxonomiaSelecionada.setText("Selecionar:");

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("Opções"));

        btnInserirTaxonomia.setText("Inserir");
        btnInserirTaxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnInserirTaxonomiaActionPerformed(evt);
            }
        });

        btnDeletarTaxonomia.setText("Deletar");
        btnDeletarTaxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeletarTaxonomiaActionPerformed(evt);
            }
        });

        btn_editarTaxonomia.setText("Editar");
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

        btn_refreshTaxonomia.setText("Refresh");
        btn_refreshTaxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_refreshTaxonomiaActionPerformed(evt);
            }
        });

        jLabel1.setText("Definições presentes:");

        cbx_Taxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbx_TaxonomiaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pnlTaxonomiaLayout = new javax.swing.GroupLayout(pnlTaxonomia);
        pnlTaxonomia.setLayout(pnlTaxonomiaLayout);
        pnlTaxonomiaLayout.setHorizontalGroup(
            pnlTaxonomiaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlTaxonomiaLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlTaxonomiaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btn_refreshTaxonomia, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(pnlTaxonomiaLayout.createSequentialGroup()
                        .addGroup(pnlTaxonomiaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblTaxonomiaSelecionada))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(pnlTaxonomiaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 211, Short.MAX_VALUE)
                            .addComponent(jLabel1)
                            .addComponent(cbx_Taxonomia, 0, 211, Short.MAX_VALUE))))
                .addContainerGap())
        );
        pnlTaxonomiaLayout.setVerticalGroup(
            pnlTaxonomiaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnlTaxonomiaLayout.createSequentialGroup()
                .addGroup(pnlTaxonomiaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(pnlTaxonomiaLayout.createSequentialGroup()
                        .addComponent(btn_refreshTaxonomia)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(cbx_Taxonomia, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(pnlTaxonomiaLayout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(lblTaxonomiaSelecionada)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlTaxonomiaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pnlTaxonomiaLayout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addGap(1, 1, 1)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 176, Short.MAX_VALUE))
                    .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        pnl_Questoes.setBorder(javax.swing.BorderFactory.createTitledBorder("Questões Relacionadas"));

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("Opções"));

        btn_InserirQuestao.setText("Inserir");
        btn_InserirQuestao.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_InserirQuestaoActionPerformed(evt);
            }
        });

        btn_DeletarQuestao.setText("Deletar");

        btn_EditarQuestao.setText("Editar");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(btn_DeletarQuestao, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_EditarQuestao, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_InserirQuestao))
                .addContainerGap())
        );

        jPanel1Layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {btn_DeletarQuestao, btn_EditarQuestao, btn_InserirQuestao});

        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btn_InserirQuestao)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_DeletarQuestao)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_EditarQuestao)
                .addContainerGap())
        );

        jScrollPane1.setViewportView(lstQuestoes);

        jScrollPane3.setViewportView(lstQuestoes1);

        jLabel2.setText("Questões :");

        jLabel3.setText("Defeitos :");

        javax.swing.GroupLayout pnl_QuestoesLayout = new javax.swing.GroupLayout(pnl_Questoes);
        pnl_Questoes.setLayout(pnl_QuestoesLayout);
        pnl_QuestoesLayout.setHorizontalGroup(
            pnl_QuestoesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnl_QuestoesLayout.createSequentialGroup()
                .addGroup(pnl_QuestoesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pnl_QuestoesLayout.createSequentialGroup()
                        .addGap(119, 119, 119)
                        .addComponent(jLabel2)
                        .addGap(99, 99, 99)
                        .addComponent(jLabel3))
                    .addGroup(pnl_QuestoesLayout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(10, 10, 10)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 146, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 146, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        pnl_QuestoesLayout.setVerticalGroup(
            pnl_QuestoesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnl_QuestoesLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnl_QuestoesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnl_QuestoesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 215, Short.MAX_VALUE)
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 215, Short.MAX_VALUE))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jSeparator1, javax.swing.GroupLayout.DEFAULT_SIZE, 797, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jSeparator2, javax.swing.GroupLayout.DEFAULT_SIZE, 797, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(pnlTaxonomia, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(pnl_Questoes, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(162, 162, 162)
                        .addComponent(lblTitle)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(lblTitle, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(11, 11, 11)
                .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(pnl_Questoes, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(pnlTaxonomia, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_InserirQuestaoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_InserirQuestaoActionPerformed
 
        if((TaxonomiaEntity)cbx_Taxonomia.getSelectedItem()!=null)
        {
            InserirQuestao insQuest = new InserirQuestao((TaxonomiaEntity)cbx_Taxonomia.getSelectedItem());
            insQuest.setVisible(true);
        }
        else
            JOptionPane.showMessageDialog(this, "Por favor selecione uma taxonomia.\n ou cadatre uma nova!");
    }//GEN-LAST:event_btn_InserirQuestaoActionPerformed

private void btnInserirTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInserirTaxonomiaActionPerformed
    
    AdicionarTaxonomia addTax= new AdicionarTaxonomia(this);
    addTax.setVisible(true);
    
}//GEN-LAST:event_btnInserirTaxonomiaActionPerformed

private void btn_refreshTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_refreshTaxonomiaActionPerformed
    
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
}//GEN-LAST:event_btn_refreshTaxonomiaActionPerformed

private void btn_editarTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_editarTaxonomiaActionPerformed
    
    TaxonomiaEntity tax = (TaxonomiaEntity)cbx_Taxonomia.getSelectedItem();
    
    AdicionarTaxonomia addTax = new AdicionarTaxonomia(tax);
    addTax.setVisible(true);
    
}//GEN-LAST:event_btn_editarTaxonomiaActionPerformed

private void btnDeletarTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeletarTaxonomiaActionPerformed
    
    TaxonomiaEntity tax = (TaxonomiaEntity)cbx_Taxonomia.getSelectedItem();
    ArrayOfItemTaxonomiaEntity itemTaxEntity = pegarItemsTaxonomia(tax.getID() );
    
    List<ItemTaxonomiaEntity> itemTaxList = itemTaxEntity.getItemTaxonomiaEntity();
    
    if(!itemTaxList.isEmpty())
    {
        for(ItemTaxonomiaEntity it : itemTaxList)
        {
            deletarItemTaxonomia(it.getID());
        }
    }
    
    deletarTaxonomias(tax.getID());
    
}//GEN-LAST:event_btnDeletarTaxonomiaActionPerformed

private void cbx_TaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbx_TaxonomiaActionPerformed
    setItemTaxonomiaList();
    setQuestaoList();
}//GEN-LAST:event_cbx_TaxonomiaActionPerformed

    private void setItemTaxonomiaList()
    {
        TaxonomiaEntity tax = (TaxonomiaEntity)cbx_Taxonomia.getSelectedItem();
        lst_itemsTaxonomia.removeAll();
        if(tax!=null)
        {
            ArrayOfItemTaxonomiaEntity itemTaxEntity = pegarItemsTaxonomia(tax.getID());
            List<ItemTaxonomiaEntity> itemTaxList = itemTaxEntity.getItemTaxonomiaEntity();
            if(!itemTaxList.isEmpty())
                lst_itemsTaxonomia.setListData(itemTaxList.toArray());

        }
    }
    
    private void setQuestaoList()
    {
        TaxonomiaEntity tax = (TaxonomiaEntity)cbx_Taxonomia.getSelectedItem();
        if(tax!=null)
        {
            ArrayOfQuestaoEntity questaoEntity = getQuestoesTaxList(tax.getID());
            List<QuestaoEntity> questaoList = questaoEntity.getQuestaoEntity();
            if(!questaoList.isEmpty())
                lstQuestoes.setListData(questaoList.toArray());

        }
    }

    public void setTaxonomia()
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

public static void main(String args[]) {
    java.awt.EventQueue.invokeLater(new Runnable() {

        public void run() {
            new AdminMenu().setVisible(true);
        }
    });
}


    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JButton btnDeletarTaxonomia;
    public javax.swing.JButton btnInserirTaxonomia;
    private javax.swing.JButton btn_DeletarQuestao;
    private javax.swing.JButton btn_EditarQuestao;
    private javax.swing.JButton btn_InserirQuestao;
    public javax.swing.JButton btn_editarTaxonomia;
    private javax.swing.JButton btn_refreshTaxonomia;
    private javax.swing.JComboBox cbx_Taxonomia;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JLabel lblTaxonomiaSelecionada;
    private javax.swing.JLabel lblTitle;
    private javax.swing.JList lstQuestoes;
    private javax.swing.JList lstQuestoes1;
    private javax.swing.JList lst_itemsTaxonomia;
    private javax.swing.JPanel pnlTaxonomia;
    private javax.swing.JPanel pnl_Questoes;
    // End of variables declaration//GEN-END:variables

    private static ArrayOfItemTaxonomiaEntity pegarItemsTaxonomia(int taxonomiaId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.pegarItemsTaxonomia(taxonomiaId);
    }

    private static ArrayOfTaxonomiaEntity pegarTaxonomias() {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.pegarTaxonomias();
    }

    private static boolean deletarTaxonomias(int taxonomia) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.deletarTaxonomias(taxonomia);
    }

    private static boolean deletarItemTaxonomia(int taxonomiaId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.deletarItemTaxonomia(taxonomiaId);
    }

    private static ArrayOfQuestaoEntity getQuestoesTaxList(int taxId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.getQuestoesTaxList(taxId);
    }


}

