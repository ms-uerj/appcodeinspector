package GUI;

import InspectorXWebserv.ArrayOfTrechoDefeito;
import InspectorXWebserv.Taxonomia;

public class InserirQuestao extends javax.swing.JFrame {

    Taxonomia Tax;
    public ArrayOfTrechoDefeito trechoList;
    
    public InserirQuestao(Taxonomia tax) 
    {
        Tax = tax;
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
        txa_QuestaoCorpo = new javax.swing.JTextArea();

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

        txa_QuestaoCorpo.setColumns(20);
        txa_QuestaoCorpo.setRows(5);
        txa_QuestaoCorpo.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                txa_QuestaoCorpoMouseReleased(evt);
            }
        });
        txateste.setViewportView(txa_QuestaoCorpo);

        javax.swing.GroupLayout pnlCorpoQuestaoLayout = new javax.swing.GroupLayout(pnlCorpoQuestao);
        pnlCorpoQuestao.setLayout(pnlCorpoQuestaoLayout);
        pnlCorpoQuestaoLayout.setHorizontalGroup(
            pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlCorpoQuestaoLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(hepCorpoQuestao, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 737, Short.MAX_VALUE)
                    .addComponent(txateste, javax.swing.GroupLayout.DEFAULT_SIZE, 737, Short.MAX_VALUE))
                .addContainerGap())
        );
        pnlCorpoQuestaoLayout.setVerticalGroup(
            pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlCorpoQuestaoLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(hepCorpoQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, 215, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(txateste, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(330, 330, 330)
                        .addComponent(lblInserirTitulo))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(txtTituloQuestao)
                            .addComponent(lblTituloquestao, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2)
                            .addComponent(cbxDificuldade, javax.swing.GroupLayout.PREFERRED_SIZE, 94, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(pnlCorpoQuestao, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel1)))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addContainerGap(638, Short.MAX_VALUE)
                        .addComponent(btnVoltar)
                        .addGap(9, 9, 9)
                        .addComponent(btnInserir)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(lblInserirTitulo)
                        .addGap(18, 18, 18)
                        .addComponent(lblTituloquestao)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtTituloQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel2)
                        .addGap(6, 6, 6)
                        .addComponent(cbxDificuldade, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(pnlCorpoQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnVoltar)
                    .addComponent(btnInserir))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnVoltarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnVoltarActionPerformed
        this.setVisible(false);
    }//GEN-LAST:event_btnVoltarActionPerformed

    private void btnInserirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInserirActionPerformed
        txa_QuestaoCorpo.setText(hepCorpoQuestao.getText());
    }//GEN-LAST:event_btnInserirActionPerformed

private void txa_QuestaoCorpoMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_txa_QuestaoCorpoMouseReleased
   
    if(!txa_QuestaoCorpo.getText().trim().isEmpty())
    {
        if(!txa_QuestaoCorpo.getSelectedText().isEmpty())
        {
            StringBuilder strDefeito = new StringBuilder();
            strDefeito.append("<TAG>").append(txa_QuestaoCorpo.getSelectedText()).append("</TAG>");
            
            SelectedDefect selectdefectView = new SelectedDefect(this,Tax,txa_QuestaoCorpo.getSelectedText());
                   
            StringBuilder strCorpo = new StringBuilder();
            if(!hepCorpoQuestao.getText().isEmpty())
            {
                strCorpo.append(hepCorpoQuestao.getText().trim());
                strCorpo.delete(txa_QuestaoCorpo.getSelectionStart(), txa_QuestaoCorpo.getSelectionEnd());
                strCorpo.insert(txa_QuestaoCorpo.getSelectionStart(),strDefeito.toString());
            }
            else
            {
                strCorpo.append(txa_QuestaoCorpo.getText().trim());
                strCorpo.delete(txa_QuestaoCorpo.getSelectionStart(), txa_QuestaoCorpo.getSelectionEnd());
                strCorpo.insert(txa_QuestaoCorpo.getSelectionStart(),strDefeito.toString());
            }
            
            hepCorpoQuestao.setText(strCorpo.toString());
            txa_QuestaoCorpo.setText(strCorpo.toString());
            selectdefectView.setVisible(true);
        }
    }
}//GEN-LAST:event_txa_QuestaoCorpoMouseReleased


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
    private javax.swing.JTextArea txa_QuestaoCorpo;
    private javax.swing.JScrollPane txateste;
    private javax.swing.JTextField txtTituloQuestao;
    // End of variables declaration//GEN-END:variables

    private static void adicionarQuestao(InspectorXWebserv.Questao questao, InspectorXWebserv.ArrayOfTrechoDefeito tdList) 
    {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        port.adicionarQuestao(questao, tdList);
    }

}
