package GUI;

import InspectorXWebserv.ArrayOfItemTaxonomiaEntity;
import InspectorXWebserv.ArrayOfTipoArtefatoEntity;
import InspectorXWebserv.ItemTaxonomiaEntity;
import InspectorXWebserv.TaxonomiaEntity;
import InspectorXWebserv.TipoArtefatoEntity;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;

public class AdicionarTaxonomia extends javax.swing.JFrame 
{
    AdminMenu Parentframe;
    TaxonomiaEntity Tax;
    List<ItemTaxonomiaEntity> itemsTaxList;
    
    public AdicionarTaxonomia() 
    {
        initComponents();
    }
    
    public AdicionarTaxonomia(AdminMenu parentframe) 
    {
        initComponents();
        
        Parentframe=parentframe;
        Parentframe.btnDeletarTaxonomia.setEnabled(false);
        Parentframe.btnInserirTaxonomia.setEnabled(false);
        Parentframe.btn_editarTaxonomia.setEnabled(false);
        setTipoArtefatoItemsCbx();
    }
    
    public AdicionarTaxonomia(AdminMenu parentframe,TaxonomiaEntity tax) 
    {
        initComponents();
        
        Tax=tax;
        txf_taxonomiaNome.setText(tax.getNome());
        lbl_TaxNome.setEnabled(false);
        txf_taxonomiaNome.setEnabled(false);
        btn_CriarTaxonomia.setEnabled(false);
        
        Parentframe=parentframe;
        Parentframe.btnDeletarTaxonomia.setEnabled(false);
        Parentframe.btnInserirTaxonomia.setEnabled(false);
        Parentframe.btn_editarTaxonomia.setEnabled(false);
        
        
        setItemsList();
        setTipoArtefatoItemsCbx();
        getTipoArtefato(tax.getID());
    }


    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblTaxonomiaTitle = new javax.swing.JLabel();
        lbl_TaxNome = new javax.swing.JLabel();
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
        jSeparator1 = new javax.swing.JSeparator();
        cbx_TipoArtefato = new javax.swing.JComboBox();
        lbl_TipoArtefato = new javax.swing.JLabel();
        btn_DefinirTipoArtefato = new javax.swing.JButton();
        lbl_TpoArtefatoDefinido = new javax.swing.JLabel();
        txf_TipoArtefatoDefinido = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setTitle("Taxonomia InspectorX");

        lblTaxonomiaTitle.setFont(new java.awt.Font("Tahoma", 1, 18));
        lblTaxonomiaTitle.setText("Taxonomia");

        lbl_TaxNome.setText("Nome:");

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

        lbl_TipoArtefato.setText("Tipo do Artefato:");

        btn_DefinirTipoArtefato.setText("Definir");
        btn_DefinirTipoArtefato.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_DefinirTipoArtefatoActionPerformed(evt);
            }
        });

        lbl_TpoArtefatoDefinido.setText("Tipo de artefato definido:");

        txf_TipoArtefatoDefinido.setEditable(false);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jSeparator1, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 392, Short.MAX_VALUE)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(pnl_Taxonomia, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 283, Short.MAX_VALUE))
                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                .addComponent(btn_refresh)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 250, Short.MAX_VALUE)
                                .addComponent(btn_finalizar))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                        .addComponent(lbl_TipoArtefato)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(cbx_TipoArtefato, 0, 236, Short.MAX_VALUE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(lbl_TaxNome)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(txf_taxonomiaNome, javax.swing.GroupLayout.DEFAULT_SIZE, 288, Short.MAX_VALUE)))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(btn_CriarTaxonomia, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(btn_DefinirTipoArtefato, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(156, 156, 156)
                        .addComponent(lblTaxonomiaTitle))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(lbl_TpoArtefatoDefinido)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txf_TipoArtefatoDefinido, javax.swing.GroupLayout.PREFERRED_SIZE, 188, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lblTaxonomiaTitle)
                .addGap(4, 4, 4)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_TaxNome)
                    .addComponent(txf_taxonomiaNome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btn_CriarTaxonomia))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cbx_TipoArtefato, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbl_TipoArtefato)
                    .addComponent(btn_DefinirTipoArtefato))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_TpoArtefatoDefinido)
                    .addComponent(txf_TipoArtefatoDefinido, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 27, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(pnl_Taxonomia, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 123, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_finalizar)
                    .addComponent(btn_refresh))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

private void btn_CriarTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_CriarTaxonomiaActionPerformed
    
    if(inserirTaxonomia(txf_taxonomiaNome.getText().trim()))
    {
        Tax = pegarTaxonomia(txf_taxonomiaNome.getText().trim());
        JOptionPane.showMessageDialog(this,"Taxonomia criada com sucesso!");
        lbl_TaxNome.setEnabled(false);
        txf_taxonomiaNome.setEnabled(false);
        btn_CriarTaxonomia.setEnabled(false);
    }
    else
    {
        JOptionPane.showMessageDialog(this,"Nome de taxonomia já existente!");
    }
     
}//GEN-LAST:event_btn_CriarTaxonomiaActionPerformed

private void btn_finalizarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_finalizarActionPerformed
    
    Parentframe.setTaxonomia();
    Parentframe.btnDeletarTaxonomia.setEnabled(true);
    Parentframe.btnInserirTaxonomia.setEnabled(true);
    Parentframe.btn_editarTaxonomia.setEnabled(true);
    this.setVisible(false);
    
}//GEN-LAST:event_btn_finalizarActionPerformed

private void btn_refreshActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_refreshActionPerformed
    setItemsList();
}//GEN-LAST:event_btn_refreshActionPerformed

private void btnInserirItemTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInserirItemTaxonomiaActionPerformed
   
   if(Tax !=null&&!cbx_TipoArtefato.isEnabled())
   {
        AdicionarItemTaxonomia addItemTax = new AdicionarItemTaxonomia(this,Tax.getID());
        addItemTax.setVisible(true);
   }
   else
   {
        JOptionPane.showMessageDialog(this,"Taxonomia ou tipo do artefato ainda não definido!");
   }
   
}//GEN-LAST:event_btnInserirItemTaxonomiaActionPerformed

private void btn_editarItemTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_editarItemTaxonomiaActionPerformed
    
}//GEN-LAST:event_btn_editarItemTaxonomiaActionPerformed

private void btnDeletarItemTaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeletarItemTaxonomiaActionPerformed
    
    if(lst_DefitosList.getSelectedValue()!=null)
    {
        ItemTaxonomiaEntity itemTax = (ItemTaxonomiaEntity)lst_DefitosList.getSelectedValue();
        deletarItemTaxonomia(itemTax.getID());
        setItemsList();
    }else
        JOptionPane.showMessageDialog(this, "Por favor selecione um item para ser deletado.");
    
}//GEN-LAST:event_btnDeletarItemTaxonomiaActionPerformed

    private void btn_DefinirTipoArtefatoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_DefinirTipoArtefatoActionPerformed
       
        if(txf_taxonomiaNome.isEnabled()&&cbx_TipoArtefato.getSelectedItem()!=null)
        {
            JOptionPane.showMessageDialog(this, "Por favor crie, primeiramente, a taxonomia.");
        }         
        else
        {
            try 
            {
                TipoArtefatoEntity tae = (TipoArtefatoEntity)cbx_TipoArtefato.getSelectedItem();
                setRealacaoTaxonomia(Tax.getID(),tae.getTAID());
                
                cbx_TipoArtefato.setEnabled(false);
                btn_DefinirTipoArtefato.setEnabled(false);
                txf_TipoArtefatoDefinido.setText(tae.getTANOME());
                
                JOptionPane.showMessageDialog(this, "Tipo de artefato definido com sucesso!");
            } 
            catch (Exception e) 
            {
                JOptionPane.showMessageDialog(this, e.getMessage());
            }
        }
            
    }//GEN-LAST:event_btn_DefinirTipoArtefatoActionPerformed

    public void setTipoArtefatoItemsCbx()
    {
        DefaultComboBoxModel theModel = (DefaultComboBoxModel)cbx_TipoArtefato.getModel();
        theModel.removeAllElements();
        
        ArrayOfTipoArtefatoEntity artefactsArray = getTiposArtefatos();

        List<TipoArtefatoEntity> taeList = artefactsArray.getTipoArtefatoEntity();

        for(TipoArtefatoEntity tae : taeList)
        {
            cbx_TipoArtefato.addItem(tae);
        }
    }
    
    public void setItemsList()
    {
        try
        {
            ArrayOfItemTaxonomiaEntity itemTaxEntity = pegarItemsTaxonomia(Tax.getID()); 
            itemsTaxList = itemTaxEntity.getItemTaxonomiaEntity();
            if(!itemsTaxList.isEmpty())
                lst_DefitosList.setListData(itemsTaxList.toArray());
        }
        catch(Exception ex)
        {
            JOptionPane.showMessageDialog(this, ex.getMessage());
        }   
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnDeletarItemTaxonomia;
    private javax.swing.JButton btnInserirItemTaxonomia;
    private javax.swing.JButton btn_CriarTaxonomia;
    private javax.swing.JButton btn_DefinirTipoArtefato;
    private javax.swing.JButton btn_editarItemTaxonomia;
    private javax.swing.JButton btn_finalizar;
    private javax.swing.JButton btn_refresh;
    private javax.swing.JComboBox cbx_TipoArtefato;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JLabel lblTaxonomiaTitle;
    private javax.swing.JLabel lbl_TaxNome;
    private javax.swing.JLabel lbl_TipoArtefato;
    private javax.swing.JLabel lbl_TpoArtefatoDefinido;
    private javax.swing.JList lst_DefitosList;
    private javax.swing.JPanel pnl_Taxonomia;
    private javax.swing.JTextField txf_TipoArtefatoDefinido;
    private javax.swing.JTextField txf_taxonomiaNome;
    // End of variables declaration//GEN-END:variables

    private static boolean inserirTaxonomia(java.lang.String nome) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.inserirTaxonomia(nome);
    }

    private static TaxonomiaEntity pegarTaxonomia(java.lang.String nome) {
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

    private static ArrayOfTipoArtefatoEntity getTiposArtefatos() {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.getTiposArtefatos();
    }

    private static boolean setRealacaoTaxonomia(int taxId, int tipoArtId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.setRealacaoTaxonomia(taxId, tipoArtId);
    }

    private static TipoArtefatoEntity getTipoArtefato(int taxId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.getTipoArtefato(taxId);
    }
    
    
}
