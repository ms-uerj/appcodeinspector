package GUI;

import net.atlanticbb.tantlinger.shef.HTMLEditorPane;

public class InserirQuestao extends javax.swing.JFrame {

    public InserirQuestao() {
        initComponents();
        
    }
    

    

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblInserirTitulo = new javax.swing.JLabel();
        lblTituloquestao = new javax.swing.JLabel();
        txtTituloQuestao = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        btnInserir = new javax.swing.JButton();
        btnVoltar = new javax.swing.JButton();
        cbxDificuldade = new javax.swing.JComboBox();
        jLabel2 = new javax.swing.JLabel();
        pnlCorpoQuestao = new javax.swing.JPanel();
        hepCorpoQuestao = new net.atlanticbb.tantlinger.shef.HTMLEditorPane();
        txateste = new javax.swing.JScrollPane();
        txaTestee = new javax.swing.JTextArea();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lblInserirTitulo.setFont(new java.awt.Font("Tahoma", 0, 18));
        lblInserirTitulo.setText("Inserir Questão");

        lblTituloquestao.setText("Identificador da questão:");

        jLabel1.setText("Corpo da questão:");

        btnInserir.setText("Inserir");
        btnInserir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnInserirActionPerformed(evt);
            }
        });

        btnVoltar.setText("Voltar");
        btnVoltar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnVoltarActionPerformed(evt);
            }
        });

        cbxDificuldade.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Fácil", "Normal", "Difícil" }));

        jLabel2.setText("Dificuldade da questão:");

        pnlCorpoQuestao.setBorder(javax.swing.BorderFactory.createEtchedBorder());

        hepCorpoQuestao.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                hepCorpoQuestaoMouseReleased(evt);
            }
        });

        txaTestee.setColumns(20);
        txaTestee.setRows(5);
        txateste.setViewportView(txaTestee);

        javax.swing.GroupLayout pnlCorpoQuestaoLayout = new javax.swing.GroupLayout(pnlCorpoQuestao);
        pnlCorpoQuestao.setLayout(pnlCorpoQuestaoLayout);
        pnlCorpoQuestaoLayout.setHorizontalGroup(
            pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlCorpoQuestaoLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(hepCorpoQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, 576, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txateste, javax.swing.GroupLayout.DEFAULT_SIZE, 737, Short.MAX_VALUE))
                .addContainerGap())
        );
        pnlCorpoQuestaoLayout.setVerticalGroup(
            pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlCorpoQuestaoLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(hepCorpoQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, 292, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(txateste, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(pnlCorpoQuestao, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(lblTituloquestao))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(txtTituloQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, 224, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(jLabel2))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(cbxDificuldade, javax.swing.GroupLayout.PREFERRED_SIZE, 94, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(jLabel1))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap(638, Short.MAX_VALUE)
                        .addComponent(btnVoltar)
                        .addGap(9, 9, 9)
                        .addComponent(btnInserir)))
                .addContainerGap())
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(414, Short.MAX_VALUE)
                .addComponent(lblInserirTitulo)
                .addGap(246, 246, 246))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lblInserirTitulo)
                .addGap(30, 30, 30)
                .addComponent(lblTituloquestao)
                .addGap(6, 6, 6)
                .addComponent(txtTituloQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel2)
                .addGap(6, 6, 6)
                .addComponent(cbxDificuldade, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(11, 11, 11)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(pnlCorpoQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnVoltar)
                    .addComponent(btnInserir))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnVoltarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnVoltarActionPerformed
        this.setVisible(false);
    }//GEN-LAST:event_btnVoltarActionPerformed

    private void btnInserirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInserirActionPerformed
        
        txaTestee.setText(hepCorpoQuestao.getText());
        
        
    }//GEN-LAST:event_btnInserirActionPerformed

    private void hepCorpoQuestaoMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_hepCorpoQuestaoMouseReleased
 
       txaTestee.setText(hepCorpoQuestao.getText());
    }//GEN-LAST:event_hepCorpoQuestaoMouseReleased

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() 
            {
                new InserirQuestao().setVisible(true);
            }
        });
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnInserir;
    private javax.swing.JButton btnVoltar;
    private javax.swing.JComboBox cbxDificuldade;
    private net.atlanticbb.tantlinger.shef.HTMLEditorPane hepCorpoQuestao;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel lblInserirTitulo;
    private javax.swing.JLabel lblTituloquestao;
    private javax.swing.JPanel pnlCorpoQuestao;
    private javax.swing.JTextArea txaTestee;
    private javax.swing.JScrollPane txateste;
    private javax.swing.JTextField txtTituloQuestao;
    // End of variables declaration//GEN-END:variables
}
