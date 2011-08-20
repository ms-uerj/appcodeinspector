package GUI;


import javax.swing.JOptionPane;

public class AdicionarItemTaxonomia extends javax.swing.JFrame {

    int Taxonomia_id;
    
    public AdicionarItemTaxonomia() {
        initComponents();
    }
    
    public AdicionarItemTaxonomia(int taxonomia_id) {
        initComponents();
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

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lblDefeitoTitle.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        lblDefeitoTitle.setText("Defeito");

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

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lbl_descricao)
                    .addComponent(jLabel1))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txf_nome)
                    .addComponent(jScrollPane1))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(105, Short.MAX_VALUE)
                .addComponent(btn_Fechar)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_Inserir)
                .addContainerGap())
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(93, Short.MAX_VALUE)
                .addComponent(lblDefeitoTitle)
                .addGap(90, 90, 90))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lblDefeitoTitle)
                .addGap(40, 40, 40)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txf_nome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lbl_descricao)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 21, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_Inserir)
                    .addComponent(btn_Fechar))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

private void btn_FecharActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_FecharActionPerformed
    this.setVisible(false);
}//GEN-LAST:event_btn_FecharActionPerformed

private void btn_InserirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_InserirActionPerformed
    
    try
    {
        if(adicionarItemTaxonomia(Taxonomia_id,txf_nome.getText().trim(),txa_descricao.getText().trim()))
        {
            JOptionPane.showMessageDialog(this,"Item criado com sucesso!");
            this.setVisible(false);
        }
        else
        {
            JOptionPane.showMessageDialog(this,"Já existe um item com este nome!");
        }
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
    private javax.swing.JLabel lblDefeitoTitle;
    private javax.swing.JLabel lbl_descricao;
    private javax.swing.JTextArea txa_descricao;
    private javax.swing.JTextField txf_nome;
    // End of variables declaration//GEN-END:variables

    private static boolean adicionarItemTaxonomia(int taxonomiaId, java.lang.String nome, java.lang.String descricao) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        return port.adicionarItemTaxonomia(taxonomiaId, nome, descricao);
    }
}
