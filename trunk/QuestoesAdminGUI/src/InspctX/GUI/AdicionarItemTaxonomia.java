package InspctX.GUI;



import InspectorXWebserv.TaxonomiaEntity;
import javax.swing.JOptionPane;

public class AdicionarItemTaxonomia extends javax.swing.JFrame {

    TaxonomiaEntity Tax;
    AdicionarTaxonomia ParentFrame;
    
    public AdicionarItemTaxonomia() {
        initComponents();
    }
    
    public AdicionarItemTaxonomia(AdicionarTaxonomia parentFrame,TaxonomiaEntity tax) 
    {
        initComponents();
        ParentFrame=parentFrame;
        Tax=tax;
        txf_taxonomiaAtual.setText(tax.getNome());
        setLocationRelativeTo(null);   
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        txf_nome = new javax.swing.JTextField();
        lbl_descricao = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        txa_descricao = new javax.swing.JTextArea();
        btn_Inserir = new javax.swing.JButton();
        btn_Fechar = new javax.swing.JButton();
        lbl_TaxonomiaAtual = new javax.swing.JLabel();
        txf_taxonomiaAtual = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setTitle("Inserção de Defeitos");

        jLabel1.setText("Nome :");

        lbl_descricao.setText("Descrição :");

        txa_descricao.setColumns(20);
        txa_descricao.setLineWrap(true);
        txa_descricao.setRows(5);
        jScrollPane1.setViewportView(txa_descricao);

        btn_Inserir.setText("Inserir");
        btn_Inserir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_InserirActionPerformed(evt);
            }
        });

        btn_Fechar.setText("Fechar");
        btn_Fechar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_FecharActionPerformed(evt);
            }
        });

        lbl_TaxonomiaAtual.setText("Taxonomia :");

        txf_taxonomiaAtual.setEditable(false);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 322, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btn_Fechar)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btn_Inserir))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(lbl_TaxonomiaAtual)
                                    .addComponent(jLabel1))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(txf_nome, javax.swing.GroupLayout.DEFAULT_SIZE, 170, Short.MAX_VALUE)
                                    .addComponent(txf_taxonomiaAtual)))
                            .addComponent(lbl_descricao))
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_TaxonomiaAtual)
                    .addComponent(txf_taxonomiaAtual, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txf_nome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(lbl_descricao)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 140, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_Inserir)
                    .addComponent(btn_Fechar))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

private void btn_FecharActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_FecharActionPerformed
    ParentFrame.setItemsList();
    dispose();
}//GEN-LAST:event_btn_FecharActionPerformed

private void btn_InserirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_InserirActionPerformed
    
    try
    {
        if(!txf_nome.getText().trim().isEmpty()&&!txa_descricao.getText().trim().isEmpty())
        {
            if(adicionarItemTaxonomia(Tax.getID(),txf_nome.getText().trim(),txa_descricao.getText().trim()))
            {
                ParentFrame.setItemsList();
                JOptionPane.showMessageDialog(this,"Item criado com sucesso!");
                this.setVisible(false);
            }
            else
            {
                JOptionPane.showMessageDialog(this,"Já existe um item com este nome!");
            }
        }
        else
            JOptionPane.showMessageDialog(this,"Por favor preecha todos os campos!");
    }
    catch(Exception ex)
    {
        JOptionPane.showMessageDialog(this,ex.getMessage());
    }
    
}//GEN-LAST:event_btn_InserirActionPerformed


    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_Fechar;
    private javax.swing.JButton btn_Inserir;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lbl_TaxonomiaAtual;
    private javax.swing.JLabel lbl_descricao;
    private javax.swing.JTextArea txa_descricao;
    private javax.swing.JTextField txf_nome;
    private javax.swing.JTextField txf_taxonomiaAtual;
    // End of variables declaration//GEN-END:variables

    private static boolean adicionarItemTaxonomia(int taxonomiaId, java.lang.String nome, java.lang.String descricao) 
    {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.adicionarItemTaxonomia(taxonomiaId, nome, descricao);
    }
    
}
