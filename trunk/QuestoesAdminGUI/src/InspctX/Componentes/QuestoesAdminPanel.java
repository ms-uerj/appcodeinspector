package InspctX.Componentes;

import InspctX.Domain.Questao;
import InspctX.Domain.Taxonomia;
import InspctX.Domain.TrechoDefeito;
import InspctX.GUI.InserirQuestao;
import InspectorXWebserv.*;
import java.util.ArrayList;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;


public final class QuestoesAdminPanel extends javax.swing.JPanel 
{

    public QuestoesAdminPanel() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        cbx_Taxonomia = new javax.swing.JComboBox();
        pnl_QuestoesOption = new javax.swing.JPanel();
        pnl_QuestaoCRUD = new javax.swing.JPanel();
        btn_InserirQuestao = new javax.swing.JButton();
        btn_RemoverQuestao = new javax.swing.JButton();
        btn_ModificarQuestao = new javax.swing.JButton();
        lbl_QuestoesLST = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        lst_Questoes = new javax.swing.JList();
        lbl_DefeitosLST = new javax.swing.JLabel();
        jScrollPane3 = new javax.swing.JScrollPane();
        lst_TrechoDefeitos = new javax.swing.JList();
        lbl_Symbol1 = new javax.swing.JLabel();
        lbl_TaxonomiaCBX = new javax.swing.JLabel();

        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        cbx_Taxonomia.setToolTipText("Selecione uma taxonomia para criar questões!");
        cbx_Taxonomia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbx_TaxonomiaActionPerformed(evt);
            }
        });
        add(cbx_Taxonomia, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 30, 220, -1));

        pnl_QuestoesOption.setBorder(javax.swing.BorderFactory.createTitledBorder("Questões relacionadas:"));

        pnl_QuestaoCRUD.setBorder(javax.swing.BorderFactory.createTitledBorder("Opções"));

        btn_InserirQuestao.setText("Inserir");
        btn_InserirQuestao.setToolTipText("Inserir uma nova questão.");
        btn_InserirQuestao.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_InserirQuestaoActionPerformed(evt);
            }
        });

        btn_RemoverQuestao.setText("Remover");
        btn_RemoverQuestao.setToolTipText("Remova a questão selecionada.");
        btn_RemoverQuestao.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_RemoverQuestaoActionPerformed(evt);
            }
        });

        btn_ModificarQuestao.setText("Modificar");
        btn_ModificarQuestao.setEnabled(false);
        btn_ModificarQuestao.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_ModificarQuestaoActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pnl_QuestaoCRUDLayout = new javax.swing.GroupLayout(pnl_QuestaoCRUD);
        pnl_QuestaoCRUD.setLayout(pnl_QuestaoCRUDLayout);
        pnl_QuestaoCRUDLayout.setHorizontalGroup(
            pnl_QuestaoCRUDLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnl_QuestaoCRUDLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(pnl_QuestaoCRUDLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(btn_RemoverQuestao, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_ModificarQuestao, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btn_InserirQuestao, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        pnl_QuestaoCRUDLayout.setVerticalGroup(
            pnl_QuestaoCRUDLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnl_QuestaoCRUDLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btn_InserirQuestao)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_ModificarQuestao)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_RemoverQuestao)
                .addGap(29, 29, 29))
        );

        lbl_QuestoesLST.setText("Questões :");

        lst_Questoes.addListSelectionListener(new javax.swing.event.ListSelectionListener() {
            public void valueChanged(javax.swing.event.ListSelectionEvent evt) {
                lst_QuestoesValueChanged(evt);
            }
        });
        jScrollPane1.setViewportView(lst_Questoes);

        lbl_DefeitosLST.setText("Defeitos :");

        jScrollPane3.setViewportView(lst_TrechoDefeitos);

        lbl_Symbol1.setText(">");

        javax.swing.GroupLayout pnl_QuestoesOptionLayout = new javax.swing.GroupLayout(pnl_QuestoesOption);
        pnl_QuestoesOption.setLayout(pnl_QuestoesOptionLayout);
        pnl_QuestoesOptionLayout.setHorizontalGroup(
            pnl_QuestoesOptionLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnl_QuestoesOptionLayout.createSequentialGroup()
                .addGap(11, 11, 11)
                .addComponent(pnl_QuestaoCRUD, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(pnl_QuestoesOptionLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pnl_QuestoesOptionLayout.createSequentialGroup()
                        .addComponent(lbl_QuestoesLST)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(pnl_QuestoesOptionLayout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(lbl_Symbol1)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnl_QuestoesOptionLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 423, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbl_DefeitosLST))
                .addGap(282, 282, 282))
        );
        pnl_QuestoesOptionLayout.setVerticalGroup(
            pnl_QuestoesOptionLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnl_QuestoesOptionLayout.createSequentialGroup()
                .addGroup(pnl_QuestoesOptionLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(pnl_QuestoesOptionLayout.createSequentialGroup()
                        .addComponent(lbl_DefeitosLST)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(pnl_QuestoesOptionLayout.createSequentialGroup()
                        .addComponent(lbl_QuestoesLST)
                        .addGap(6, 6, 6)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(0, 7, Short.MAX_VALUE))
            .addGroup(pnl_QuestoesOptionLayout.createSequentialGroup()
                .addGroup(pnl_QuestoesOptionLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pnl_QuestoesOptionLayout.createSequentialGroup()
                        .addGap(117, 117, 117)
                        .addComponent(lbl_Symbol1))
                    .addGroup(pnl_QuestoesOptionLayout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(pnl_QuestaoCRUD, javax.swing.GroupLayout.PREFERRED_SIZE, 119, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );

        add(pnl_QuestoesOption, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 60, 680, 280));

        lbl_TaxonomiaCBX.setText("Taxonomias Registradas:");
        add(lbl_TaxonomiaCBX, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 10, -1, -1));
    }// </editor-fold>//GEN-END:initComponents

    private void btn_InserirQuestaoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_InserirQuestaoActionPerformed

        if ((Taxonomia)cbx_Taxonomia.getSelectedItem() != null) {
            InserirQuestao insQuest = new InserirQuestao(this,(Taxonomia) cbx_Taxonomia.getSelectedItem());
            insQuest.setVisible(true);
        } else {
            JOptionPane.showMessageDialog(this, "Por favor selecione uma taxonomia.\n ou cadatre uma nova!");
        }
        
    }//GEN-LAST:event_btn_InserirQuestaoActionPerformed

    private void btn_RemoverQuestaoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_RemoverQuestaoActionPerformed
        try {
            if (lst_Questoes.getSelectedValue() != null) {
                
                int qid = ((Questao) lst_Questoes.getSelectedValue()).getQID();
                
                if (deletarQuestao(qid)) {
                    JOptionPane.showMessageDialog(this, "Questão removida com sucesso!");
		    setTrechoDefeitoList();
		    setQuestaoList();
                }
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(this, ex.getMessage());
        }
    }//GEN-LAST:event_btn_RemoverQuestaoActionPerformed

    private void btn_ModificarQuestaoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_ModificarQuestaoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btn_ModificarQuestaoActionPerformed

    private void lst_QuestoesValueChanged(javax.swing.event.ListSelectionEvent evt) {//GEN-FIRST:event_lst_QuestoesValueChanged
        if(!evt.getValueIsAdjusting())
            setTrechoDefeitoList();    
    }//GEN-LAST:event_lst_QuestoesValueChanged

    private void cbx_TaxonomiaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbx_TaxonomiaActionPerformed
        setQuestaoList();
	lst_TrechoDefeitos.setListData(new Object[0]);
    }//GEN-LAST:event_cbx_TaxonomiaActionPerformed

    private void setTrechoDefeitoList()
    {
        try 
        {
            if(lst_Questoes.getSelectedValue()!=null)
            {
                Questao questao = (Questao)lst_Questoes.getSelectedValue();
                ArrayOfTrechoDefeitoEntity tdEntityArray = getTrechosDefeito(questao.qEntity.getQID());

                List<TrechoDefeitoEntity> tdListEntity = tdEntityArray.getTrechoDefeitoEntity();
                lst_TrechoDefeitos.setListData(new Object[0]);
                
                List<TrechoDefeito> tdList = new ArrayList<>();
                
                for(TrechoDefeitoEntity tde : tdListEntity)
                {
                    tdList.add(new TrechoDefeito(tde));
                }
                
                if(!tdListEntity.isEmpty())
                    lst_TrechoDefeitos.setListData(tdList.toArray());
            }
        } 
        catch (Exception ex) 
        {
            JOptionPane.showMessageDialog(this, ex.getMessage());
        }
        
    }
    
    public void setTaxonomiaCombobox()
    {
        try
        {
            DefaultComboBoxModel theModel = (DefaultComboBoxModel)cbx_Taxonomia.getModel();
            theModel.removeAllElements();

            ArrayOfTaxonomiaEntity taxArray = pegarTaxonomias();

            List<TaxonomiaEntity> taxList = taxArray.getTaxonomiaEntity();

            for(TaxonomiaEntity txe : taxList)
            {
                cbx_Taxonomia.addItem(new Taxonomia(txe));
            }
        }
        catch(Exception ex)
        {
            JOptionPane.showMessageDialog(this, ex);
        }
    }
    
    public void setQuestaoList()
    {
        try 
        {
            Taxonomia tax = (Taxonomia)cbx_Taxonomia.getSelectedItem();
            if(tax!=null)
            {
                ArrayOfQuestaoEntity questaoEntity = getQuestoesTaxList(tax.taxEntity.getID());
                
                List<QuestaoEntity> questaoListEntity = questaoEntity.getQuestaoEntity();
                
                lst_Questoes.setListData(new Object[0]);
                lst_Questoes.setCellRenderer(new CustomLstCellRenderer());
                List<Questao> questaoList = new ArrayList<Questao>();
                        
                for(QuestaoEntity qe : questaoListEntity)
                {
                    questaoList.add(new Questao(qe));
                }
                
                if(!questaoList.isEmpty())
                    lst_Questoes.setListData(questaoList.toArray());
            }
        } 
        catch (Exception ex) 
        {
            JOptionPane.showMessageDialog(this, ex.getMessage());
        }
        
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_InserirQuestao;
    private javax.swing.JButton btn_ModificarQuestao;
    private javax.swing.JButton btn_RemoverQuestao;
    private javax.swing.JComboBox cbx_Taxonomia;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JLabel lbl_DefeitosLST;
    private javax.swing.JLabel lbl_QuestoesLST;
    private javax.swing.JLabel lbl_Symbol1;
    private javax.swing.JLabel lbl_TaxonomiaCBX;
    private javax.swing.JList lst_Questoes;
    private javax.swing.JList lst_TrechoDefeitos;
    private javax.swing.JPanel pnl_QuestaoCRUD;
    private javax.swing.JPanel pnl_QuestoesOption;
    // End of variables declaration//GEN-END:variables

    private static ArrayOfTrechoDefeitoEntity getTrechosDefeito(int questaoId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.getTrechosDefeito(questaoId);
    }
    
        private static ArrayOfTaxonomiaEntity pegarTaxonomias() {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.pegarTaxonomias();
    }
        
    private static ArrayOfQuestaoEntity getQuestoesTaxList(int taxId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.getQuestoesTaxList(taxId);
    }

    private static boolean deletarQuestao(int questaoId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap();
        return port.deletarQuestao(questaoId);
    }
    
}
