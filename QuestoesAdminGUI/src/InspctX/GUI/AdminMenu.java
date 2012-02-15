package InspctX.GUI;

import InspectorXWebserv.ArrayOfItemTaxonomiaEntity;
import InspectorXWebserv.ArrayOfQuestaoEntity;
import InspectorXWebserv.ArrayOfTaxonomiaEntity;
import InspectorXWebserv.ArrayOfTrechoDefeitoEntity;

public class AdminMenu extends javax.swing.JFrame {

    public AdminMenu() 
    {
        initComponents();

    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblTitle = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jSeparator2 = new javax.swing.JSeparator();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        taxonomiasAdmin1 = new InspctX.Componentes.TaxonomiasAdmin();
        questoesAdmin1 = new InspctX.Componentes.QuestoesAdmin();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lblTitle.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblTitle.setText("Administrador de questões e taxonomias do jogo InspectorX");

        jTabbedPane1.addTab("Taxonomias", taxonomiasAdmin1);
        jTabbedPane1.addTab("Questões", questoesAdmin1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(10, 10, 10)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jTabbedPane1)
                        .addContainerGap())
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 520, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(20, 20, 20)
                                .addComponent(lblTitle))
                            .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 520, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(89, 89, 89))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(11, 11, 11)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(9, 9, 9)
                        .addComponent(lblTitle)))
                .addGap(8, 8, 8)
                .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jTabbedPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 390, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

//    private void setItemTaxonomiaList()
//    {
//        try 
//        {
//            TaxonomiaEntity tax = (TaxonomiaEntity)cbx_Taxonomia.getSelectedItem();
//            lst_itemsTaxonomia.setListData(new Object[0]);
//            if(tax!=null)
//            {
//                ArrayOfItemTaxonomiaEntity itemTaxEntityArray = pegarItemsTaxonomia(tax.getID());
//                List<ItemTaxonomiaEntity> itemTaxList = itemTaxEntityArray.getItemTaxonomiaEntity();
//                if(!itemTaxList.isEmpty())
//                    lst_itemsTaxonomia.setListData(itemTaxList.toArray());
//
//            }
//        } 
//        catch (Exception ex) 
//        {
//            JOptionPane.showMessageDialog(this, ex.getMessage());
//        }
//        
//    }
//    
//    private void setTrechoDefeitoList()
//    {
//        try 
//        {
//            if(lstQuestoes.getSelectedValue()!=null)
//            {
//            QuestaoEntity questaoEntity = (QuestaoEntity)lstQuestoes.getSelectedValue();
//            ArrayOfTrechoDefeitoEntity tdEntityArray = getTrechosDefeito(questaoEntity.getQID());
//            
//            List<TrechoDefeitoEntity> tdList = tdEntityArray.getTrechoDefeitoEntity();
//            lst_TrechoDefeitos.setListData(new Object[0]);
//            if(!tdList.isEmpty())
//                lst_TrechoDefeitos.setListData(tdList.toArray());
//            }
//        } 
//        catch (Exception ex) 
//        {
//            JOptionPane.showMessageDialog(this, ex.getMessage());
//        }
//        
//    }
//    
//    public void setQuestaoList()
//    {
//        try 
//        {
//            TaxonomiaEntity tax = (TaxonomiaEntity)cbx_Taxonomia.getSelectedItem();
//            if(tax!=null)
//            {
//                ArrayOfQuestaoEntity questaoEntity = getQuestoesTaxList(tax.getID());
//                List<QuestaoEntity> questaoList = questaoEntity.getQuestaoEntity();
//                lstQuestoes.setListData(new Object[0]);
//                if(!questaoList.isEmpty())
//                    lstQuestoes.setListData(questaoList.toArray());
//
//            }
//        } 
//        catch (Exception ex) 
//        {
//            JOptionPane.showMessageDialog(this, ex.getMessage());
//        }
//        
//    }
//
//    public void setTaxonomia()
//    {
//        try
//        {
//            DefaultComboBoxModel theModel = (DefaultComboBoxModel)cbx_Taxonomia.getModel();
//            theModel.removeAllElements();
//
//            ArrayOfTaxonomiaEntity taxArray = pegarTaxonomias();
//
//            List<TaxonomiaEntity> taxList = taxArray.getTaxonomiaEntity();
//
//            for(TaxonomiaEntity txe : taxList)
//            {
//                cbx_Taxonomia.addItem(txe);
//            }
//
//        }
//        catch(Exception ex)
//        {
//            JOptionPane.showMessageDialog(this, ex);
//        }
//    }

public static void main(String args[]) {
    java.awt.EventQueue.invokeLater(new Runnable() {

            @Override
        public void run() {
            new AdminMenu().setVisible(true);
        }
    });
}


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JLabel lblTitle;
    private InspctX.Componentes.QuestoesAdmin questoesAdmin1;
    private InspctX.Componentes.TaxonomiasAdmin taxonomiasAdmin1;
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

    private static ArrayOfTrechoDefeitoEntity getTrechosDefeito(int questaoId) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.getTrechosDefeito(questaoId);
    }

}

