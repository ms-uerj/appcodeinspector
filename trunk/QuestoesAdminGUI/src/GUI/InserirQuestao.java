package GUI;


import InspectorXWebserv.ArrayOfTrechoDefeitoEntity;
import InspectorXWebserv.QuestaoEntity;
import InspectorXWebserv.TaxonomiaEntity;
import javax.swing.JOptionPane;

public class InserirQuestao extends javax.swing.JFrame {

    TaxonomiaEntity Tax;
    //public ArrayList<TrechoDefeitoEntity> trechoList = new ArrayList<TrechoDefeitoEntity>();
    public ArrayOfTrechoDefeitoEntity trechoList = new ArrayOfTrechoDefeitoEntity();
    
    public InserirQuestao(TaxonomiaEntity tax) 
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
        tbt_SelecionarDefeito = new javax.swing.JToggleButton();
        jLabel3 = new javax.swing.JLabel();

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

        tbt_SelecionarDefeito.setText("Selecionar Defeito");

        jLabel3.setText("Visualização:");

        javax.swing.GroupLayout pnlCorpoQuestaoLayout = new javax.swing.GroupLayout(pnlCorpoQuestao);
        pnlCorpoQuestao.setLayout(pnlCorpoQuestaoLayout);
        pnlCorpoQuestaoLayout.setHorizontalGroup(
            pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlCorpoQuestaoLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(hepCorpoQuestao, javax.swing.GroupLayout.DEFAULT_SIZE, 679, Short.MAX_VALUE)
                    .addComponent(txateste, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 679, Short.MAX_VALUE)
                    .addComponent(tbt_SelecionarDefeito)
                    .addComponent(jLabel3))
                .addContainerGap())
        );
        pnlCorpoQuestaoLayout.setVerticalGroup(
            pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlCorpoQuestaoLayout.createSequentialGroup()
                .addGap(22, 22, 22)
                .addComponent(tbt_SelecionarDefeito)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txateste, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(21, 21, 21)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(hepCorpoQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, 192, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(26, Short.MAX_VALUE))
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
                            .addComponent(cbxDificuldade, javax.swing.GroupLayout.PREFERRED_SIZE, 94, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2)))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel1)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(btnVoltar)
                                    .addGap(9, 9, 9)
                                    .addComponent(btnInserir))
                                .addComponent(pnlCorpoQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
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
                .addGap(18, 18, 18)
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
        
        if(cbxDificuldade.getSelectedIndex()==3&&trechoList.getTrechoDefeitoEntity().size()<2)
        {
            JOptionPane.showMessageDialog(this, "No nível difícil é necessário definir mais de 1 defeito");
        }
        else
        {
            QuestaoEntity queste = new QuestaoEntity();
            queste.setQXML(hepCorpoQuestao.getText());
            queste.setQNivelDificuldade(cbxDificuldade.getSelectedIndex());
            adicionarQuestao(queste, trechoList);
            JOptionPane.showMessageDialog(this, "Questão adicionada com sucesso!");
            this.setVisible(false);          
        }
    }//GEN-LAST:event_btnInserirActionPerformed

private void txa_QuestaoCorpoMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_txa_QuestaoCorpoMouseReleased
    
    if(!txa_QuestaoCorpo.getText().trim().isEmpty()&&tbt_SelecionarDefeito.isSelected())
    {
        if(!txa_QuestaoCorpo.getSelectedText().isEmpty())
        {
            StringBuilder strDefeito = new StringBuilder();
            strDefeito.append("<TAG>").append(txa_QuestaoCorpo.getSelectedText()).append("</TAG>");
            

            StringBuilder strCorpo = new StringBuilder();

            strCorpo.append(txa_QuestaoCorpo.getText().trim());
            strCorpo.delete(txa_QuestaoCorpo.getSelectionStart(),txa_QuestaoCorpo.getSelectionEnd());
            strCorpo.insert(txa_QuestaoCorpo.getSelectionStart(),strDefeito.toString());

            
            hepCorpoQuestao.setText(texto2Html(strCorpo.toString()));
            txa_QuestaoCorpo.setText(strCorpo.toString());
            
            SelecaoDefeito setDefeito = new SelecaoDefeito(trechoList, Tax, strDefeito.toString());
            setDefeito.setVisible(true);
            
        }
    }
}//GEN-LAST:event_txa_QuestaoCorpoMouseReleased


public static String texto2Html(String s) 
{
    StringBuilder htmlBuilder = new StringBuilder();
    boolean previousWasASpace = false;
    for( char c : s.toCharArray() ) {
        if( c == ' ' ) {
            if( previousWasASpace ) {
                htmlBuilder.append("&nbsp;");
                previousWasASpace = false;
                continue;
            }
            previousWasASpace = true;
        } else {
            previousWasASpace = false;
        }
        switch(c) {
            case '<': htmlBuilder.append("&lt;"); break;
            case '>': htmlBuilder.append("&gt;"); break;
            case '&': htmlBuilder.append("&amp;"); break;
            case '"': htmlBuilder.append("&quot;"); break;
            case '\n': htmlBuilder.append("<br>"); break;
            case '\t': htmlBuilder.append("&nbsp; &nbsp; &nbsp;"); break;  
            default:
                if( c < 128 ) {
                    htmlBuilder.append(c);
                } else {
                    htmlBuilder.append("&#").append((int)c).append(";");
                }    
        }
    }
    return htmlBuilder.toString();
}


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnInserir;
    private javax.swing.JButton btnVoltar;
    private javax.swing.JComboBox cbxDificuldade;
    private net.atlanticbb.tantlinger.shef.HTMLEditorPane hepCorpoQuestao;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel lblInserirTitulo;
    private javax.swing.JLabel lblTituloquestao;
    private javax.swing.JPanel pnlCorpoQuestao;
    private javax.swing.JToggleButton tbt_SelecionarDefeito;
    private javax.swing.JTextArea txa_QuestaoCorpo;
    private javax.swing.JScrollPane txateste;
    private javax.swing.JTextField txtTituloQuestao;
    // End of variables declaration//GEN-END:variables

    private static void adicionarQuestao(InspectorXWebserv.QuestaoEntity questao, InspectorXWebserv.ArrayOfTrechoDefeitoEntity tdList) {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        port.adicionarQuestao(questao, tdList);
    }

}
