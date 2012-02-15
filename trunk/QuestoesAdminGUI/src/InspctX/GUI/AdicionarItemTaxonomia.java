package InspctX.GUI;


import javax.swing.JOptionPane;

public class AdicionarItemTaxonomia extends javax.swing.JFrame {

    int Taxonomia_id;
    AdicionarTaxonomia AddTax;
    
    public AdicionarItemTaxonomia() {
        initComponents();
    }
    
    public AdicionarItemTaxonomia(AdicionarTaxonomia addTax,int taxonomia_id) 
    {
        
        initComponents();
        AddTax=addTax;
        Taxonomia_id=taxonomia_id;
        
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblDefeitoTitle = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        txf_nome = new javax.swing.JTextField();
        lbl_descricao = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        txa_descricao = new javax.swing.JTextArea();
        btn_Inserir = new javax.swing.JButton();
        btn_Fechar = new javax.swing.JButton();
        lbl_TaxonomiaAtual = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        txf_taxonomiaAtual = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setTitle("Defeito");

        lblDefeitoTitle.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        lblDefeitoTitle.setText("Novo Defeito");

        jLabel1.setText("Nome :");

        lbl_descricao.setText("Descrição :");

        txa_descricao.setColumns(20);
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
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lbl_descricao)
                            .addComponent(jLabel1))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lblDefeitoTitle)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(txf_nome)
                                .addComponent(jScrollPane1)
                                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                    .addComponent(btn_Fechar)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addComponent(btn_Inserir)))))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(lbl_TaxonomiaAtual)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txf_taxonomiaAtual, javax.swing.GroupLayout.DEFAULT_SIZE, 166, Short.MAX_VALUE))
                    .addComponent(jSeparator1, javax.swing.GroupLayout.DEFAULT_SIZE, 229, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lblDefeitoTitle)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_TaxonomiaAtual)
                    .addComponent(txf_taxonomiaAtual, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 26, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txf_nome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lbl_descricao)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_Inserir)
                    .addComponent(btn_Fechar))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

private void btn_FecharActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_FecharActionPerformed
    AddTax.setItemsList();
    this.setVisible(false);
}//GEN-LAST:event_btn_FecharActionPerformed

private void btn_InserirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_InserirActionPerformed
    
    try
    {
        if(!txf_nome.getText().trim().isEmpty()&&!txa_descricao.getText().trim().isEmpty())
        {
            if(adicionarItemTaxonomia(Taxonomia_id,txf_nome.getText().trim(),txa_descricao.getText().trim()))
            {
                AddTax.setItemsList();
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
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JLabel lblDefeitoTitle;
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
