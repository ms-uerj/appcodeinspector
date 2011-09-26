package GUI;


import InspectorXWebserv.ArrayOfTrechoDefeitoEntity;
import InspectorXWebserv.QuestaoEntity;
import InspectorXWebserv.TaxonomiaEntity;
import java.awt.Color;
import javax.swing.JOptionPane;

public class InserirQuestao extends javax.swing.JFrame {

    public TaxonomiaEntity Tax;
    public ArrayOfTrechoDefeitoEntity trechoList = new ArrayOfTrechoDefeitoEntity();
<<<<<<< .mine
    private final int NIVEL_DIFICIL = 2;
    private final int NIVEL_FACIL = 0;
=======
    
    private final int QUESTAO_DIFICIL = 2;

>>>>>>> .r144
    
    public InserirQuestao(TaxonomiaEntity tax) 
    {   
        Tax = tax;
        initComponents();
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblInserirTitulo = new javax.swing.JLabel();
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
        jScrollPane1 = new javax.swing.JScrollPane();
        lst_DefeitosSelecionados = new javax.swing.JList();
        label1 = new java.awt.Label();
        jSeparator1 = new javax.swing.JSeparator();
        jSeparator2 = new javax.swing.JSeparator();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lblInserirTitulo.setFont(new java.awt.Font("Tahoma", 0, 18));
        lblInserirTitulo.setText("Inserir Questão");

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
        tbt_SelecionarDefeito.setToolTipText("Pressione e selecione o trecho com o defeito");

        jLabel3.setText("Visualização:");

        jScrollPane1.setViewportView(lst_DefeitosSelecionados);

        label1.setFont(new java.awt.Font("Tahoma", 0, 11));
        label1.setText("Defeitos Selecionados :");

        javax.swing.GroupLayout pnlCorpoQuestaoLayout = new javax.swing.GroupLayout(pnlCorpoQuestao);
        pnlCorpoQuestao.setLayout(pnlCorpoQuestaoLayout);
        pnlCorpoQuestaoLayout.setHorizontalGroup(
            pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlCorpoQuestaoLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(hepCorpoQuestao, javax.swing.GroupLayout.DEFAULT_SIZE, 646, Short.MAX_VALUE)
                    .addGroup(pnlCorpoQuestaoLayout.createSequentialGroup()
                        .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel3)
                            .addComponent(tbt_SelecionarDefeito)
                            .addComponent(txateste, javax.swing.GroupLayout.DEFAULT_SIZE, 504, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(label1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 132, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap())
        );
        pnlCorpoQuestaoLayout.setVerticalGroup(
            pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlCorpoQuestaoLayout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(tbt_SelecionarDefeito)
                    .addComponent(label1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 279, Short.MAX_VALUE)
                    .addComponent(txateste, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 279, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(hepCorpoQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, 260, javax.swing.GroupLayout.PREFERRED_SIZE)
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
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(cbxDificuldade, javax.swing.GroupLayout.PREFERRED_SIZE, 94, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2)))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(jSeparator2, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jSeparator1, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(pnlCorpoQuestao, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel1, javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(btnVoltar)
                                .addGap(9, 9, 9)
                                .addComponent(btnInserir))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(284, 284, 284)
                        .addComponent(lblInserirTitulo)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(1, 1, 1)
                .addComponent(lblInserirTitulo)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(3, 3, 3)
                .addComponent(jLabel2)
                .addGap(6, 6, 6)
                .addComponent(cbxDificuldade, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(pnlCorpoQuestao, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
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
        
        if(cbxDificuldade.getSelectedIndex()==NIVEL_DIFICIL&&trechoList.getTrechoDefeitoEntity().size()<2)
        {
            JOptionPane.showMessageDialog(this, "No nível difícil é necessário definir mais de 1 defeito.");
            return;
        }
        if(trechoList.getTrechoDefeitoEntity().isEmpty())
        {
            JOptionPane.showMessageDialog(this, "È necessário definir um trecho com defeito.");
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
    
<<<<<<< .mine
    if(cbxDificuldade.getSelectedIndex()<NIVEL_DIFICIL && trechoList.getTrechoDefeitoEntity().size()==1)
    {
=======
    if(cbxDificuldade.getSelectedIndex() != QUESTAO_DIFICIL && trechoList.getTrechoDefeitoEntity().size()==1)
>>>>>>> .r144
        JOptionPane.showMessageDialog(this, "Trecho com defeito já selecionado");
        return;
    }   
    
    if(!txa_QuestaoCorpo.getText().trim().isEmpty()&&tbt_SelecionarDefeito.isSelected())
    {
        if(!txa_QuestaoCorpo.getSelectedText().isEmpty())
        {
            StringBuilder strDefeito = new StringBuilder();
            
            if (cbxDificuldade.getSelectedIndex()==0) 
            {
                setTrechoNivelFacil(strDefeito);
            }
            else
                setTrecho(strDefeito);
            
            SelecaoDefeito setDefeito = new SelecaoDefeito(trechoList, Tax, strDefeito.toString(),this);
            setDefeito.setVisible(true);
        }
    }
    
}//GEN-LAST:event_txa_QuestaoCorpoMouseReleased

public void setTrecho(StringBuilder strDefeito)
{
    StringBuilder strCorpo = new StringBuilder();

    txa_QuestaoCorpo.setSelectionColor(Color.red);
    
    strDefeito.append(txa_QuestaoCorpo.getSelectedText().trim());
    strCorpo.append(texto2Html(txa_QuestaoCorpo.getText().trim()));

    hepCorpoQuestao.setText(strCorpo.toString());
}

public void setTrechoNivelFacil(StringBuilder strDefeito)
{
    StringBuilder strCorpo = new StringBuilder();
    StringBuilder strCorpoHtml = new StringBuilder();
    
    strDefeito.append("<span class='erro'><a href='event:erro'>")
              .append(txa_QuestaoCorpo.getSelectedText())
              .append("</a></span>");

    //Deletando o trecho selecionado
    strCorpo.append(txa_QuestaoCorpo.getText());
    strCorpo.delete(txa_QuestaoCorpo.getSelectionStart(),txa_QuestaoCorpo.getSelectionEnd());

    //Calculando a nova posição de inserção pós modificação para html
    int indexFix = fixModifiedIndexPosition(strCorpo.toString(),txa_QuestaoCorpo.getSelectionStart());

    //Inserindo a trecho com a tag no index concertado
    strCorpoHtml.append(texto2Html(strCorpo.toString())); 
    strCorpoHtml.insert(txa_QuestaoCorpo.getSelectionStart()+indexFix,strDefeito.toString());

    hepCorpoQuestao.setText(strCorpoHtml.toString());

    strCorpo.insert(txa_QuestaoCorpo.getSelectionStart(),strDefeito.toString());
    txa_QuestaoCorpo.setText(strCorpo.toString());
    
}

public static int fixModifiedIndexPosition(String s,int limitIndexPoint)
{
    StringBuilder htmlBuilder = new StringBuilder();
    boolean previousWasASpace = false;
    
    int insertIndexFix=0;
    int index=0;
    
    for(char c : s.toCharArray())
    {
        //Verificando se ultrapassou o index inicial
        if(index==limitIndexPoint)
            break;
        
        if( c == ' ' ) 
        {
            //if(previousWasASpace) 
            //{
                htmlBuilder.append("&nbsp;");
                insertIndexFix = insertIndexFix+5;
                previousWasASpace = false;
                index++;
                continue;
            //}
            //insertIndexFix++;
            //previousWasASpace = true;
        } else 
        {
            previousWasASpace = false;
        }
        switch(c) 
        {
            case '<': 
                htmlBuilder.append("&lt;");
                insertIndexFix = insertIndexFix+3; 
                break;
            case '>': 
                htmlBuilder.append("&gt;");
                insertIndexFix = insertIndexFix+3;
                break;
            case '&': 
                htmlBuilder.append("&amp;");
                insertIndexFix = insertIndexFix+4;
                break;
            case '"':
                htmlBuilder.append("&quot;");
                insertIndexFix = insertIndexFix+5;
                break;
            case '\n':
                htmlBuilder.append("<br>");
                insertIndexFix = insertIndexFix+3;
                break;
            case '\t':
                htmlBuilder.append("&nbsp;&nbsp;&nbsp;");
                insertIndexFix = insertIndexFix+17;
                break;
            default:
                if( c < 128 ) 
                {
                    htmlBuilder.append(c);
                }
                else 
                {
                    htmlBuilder.append("&#").append((int)c).append(";");
                    insertIndexFix = insertIndexFix+3;
                }
        }
         index++;
    }
    return insertIndexFix;
}

public static String texto2Html(String s) 
{
    StringBuilder htmlBuilder = new StringBuilder();
    boolean previousWasASpace = false;
    for(char c : s.toCharArray())
    {
        if( c == ' ' ) 
        {
            //if(previousWasASpace) 
            //{
                htmlBuilder.append("&nbsp;");
            //    previousWasASpace = false;
                continue;
            //}
            //previousWasASpace = true;
        } else 
        {
            previousWasASpace = false;
        }
        switch(c) {
            case '<': htmlBuilder.append("&lt;"); break;
            case '>': htmlBuilder.append("&gt;"); break;
            case '&': htmlBuilder.append("&amp;"); break;
            case '"': htmlBuilder.append("&quot;"); break;
            case '\n': htmlBuilder.append("<br>"); break;
            case '\t': htmlBuilder.append("&nbsp;&nbsp;&nbsp;"); break;  
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
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private java.awt.Label label1;
    private javax.swing.JLabel lblInserirTitulo;
    public javax.swing.JList lst_DefeitosSelecionados;
    private javax.swing.JPanel pnlCorpoQuestao;
    private javax.swing.JToggleButton tbt_SelecionarDefeito;
    private javax.swing.JTextArea txa_QuestaoCorpo;
    private javax.swing.JScrollPane txateste;
    // End of variables declaration//GEN-END:variables

    private static void adicionarQuestao(InspectorXWebserv.QuestaoEntity questao, InspectorXWebserv.ArrayOfTrechoDefeitoEntity tdList) 
    {
        InspectorXWebserv.WebServiceMain service = new InspectorXWebserv.WebServiceMain();
        InspectorXWebserv.WebServiceMainSoap port = service.getWebServiceMainSoap12();
        port.adicionarQuestao(questao, tdList);
    }

}
