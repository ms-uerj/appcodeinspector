package InspctX.GUI;

import InspctX.Componentes.QuestoesAdminPanel;
import InspctX.Domain.Taxonomia;
import InspectorXWebserv.ArrayOfTrechoDefeitoEntity;
import InspectorXWebserv.QuestaoEntity;
import javax.swing.JOptionPane;

public class InserirQuestao extends javax.swing.JFrame {

    
    private QuestoesAdminPanel ParentFrame;
    public Taxonomia Tax;
    public ArrayOfTrechoDefeitoEntity trechoList = new ArrayOfTrechoDefeitoEntity();
    private final int NIVEL_DIFICIL_INDEX = 2;
    
    private final int Nivel_Facil = 1; 
    private final int Nivel_Medio = 2;
    private final int Nivel_Dificil = 3;
    
    public InserirQuestao(QuestoesAdminPanel qAdmin, Taxonomia tax) 
    {   
        Tax = tax;
        ParentFrame=qAdmin;
        initComponents();
        setLocationRelativeTo(null);
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

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

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Inserção de Artefatos");

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

        label1.setFont(new java.awt.Font("Tahoma", 0, 11)); // NOI18N
        label1.setText("Defeitos Selecionados :");

        javax.swing.GroupLayout pnlCorpoQuestaoLayout = new javax.swing.GroupLayout(pnlCorpoQuestao);
        pnlCorpoQuestao.setLayout(pnlCorpoQuestaoLayout);
        pnlCorpoQuestaoLayout.setHorizontalGroup(
            pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlCorpoQuestaoLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(pnlCorpoQuestaoLayout.createSequentialGroup()
                        .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel3)
                            .addComponent(tbt_SelecionarDefeito)
                            .addComponent(txateste))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(label1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 132, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(hepCorpoQuestao, javax.swing.GroupLayout.DEFAULT_SIZE, 724, Short.MAX_VALUE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        pnlCorpoQuestaoLayout.setVerticalGroup(
            pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlCorpoQuestaoLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(tbt_SelecionarDefeito)
                    .addComponent(label1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(pnlCorpoQuestaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txateste)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 291, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(hepCorpoQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, 260, javax.swing.GroupLayout.PREFERRED_SIZE))
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
                            .addComponent(jLabel2)
                            .addComponent(jLabel1)
                            .addComponent(pnlCorpoQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btnVoltar, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnInserir, javax.swing.GroupLayout.PREFERRED_SIZE, 115, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2)
                .addGap(6, 6, 6)
                .addComponent(cbxDificuldade, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(pnlCorpoQuestao, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnInserir, javax.swing.GroupLayout.DEFAULT_SIZE, 40, Short.MAX_VALUE)
                    .addComponent(btnVoltar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnVoltarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnVoltarActionPerformed
        this.setVisible(false);
    }//GEN-LAST:event_btnVoltarActionPerformed

    private void btnInserirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInserirActionPerformed

        try 
        {
            if(cbxDificuldade.getSelectedIndex()==NIVEL_DIFICIL_INDEX&&trechoList.getTrechoDefeitoEntity().size()<2)
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
                //TODO Concertando o nível de dificuldade, no banco de dados deve ser 1-fácil,2-médio,3-difícil
                //Sendo assim basta somar 1 ao index da cbx (MELHORAR)
                queste.setQNivelDificuldade(cbxDificuldade.getSelectedIndex()+1);
                adicionarQuestao(queste, trechoList);
                JOptionPane.showMessageDialog(this, "Questão adicionada com sucesso!");
                ParentFrame.setQuestaoList();
                this.setVisible(false);          
            }
        } 
        catch (Exception ex) 
        {
            ex.getMessage();
        }
        
        
        
    }//GEN-LAST:event_btnInserirActionPerformed

private void txa_QuestaoCorpoMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_txa_QuestaoCorpoMouseReleased
    
    try 
    {
        if(cbxDificuldade.getSelectedIndex()<NIVEL_DIFICIL_INDEX && trechoList.getTrechoDefeitoEntity().size()==1)
        {
            JOptionPane.showMessageDialog(this, "Trecho com defeito já selecionado./nPara mais defeitos aumento o nível de dificuldade para difícil.");
            return;
        }   

        if(!txa_QuestaoCorpo.getText().trim().isEmpty()&&tbt_SelecionarDefeito.isSelected())
        {
            if(!txa_QuestaoCorpo.getSelectedText().trim().isEmpty())
            {            
                //Nivel fácil no banco equivale ao nível 1, no como estamos usando o modelo default e o fácil esta na primeira posição o index será 0.
                if (cbxDificuldade.getSelectedIndex()==0) 
                {
                    setTrechoNivelFacil();
                }
                else
                    setTrecho();

                SelecaoDefeito setDefeito = new SelecaoDefeito(trechoList, Tax, txa_QuestaoCorpo.getSelectedText().trim(),this);
                setDefeito.setVisible(true);
            }
        }
    } 
    catch (Exception ex) 
    {
        JOptionPane.showMessageDialog(this, ex.getMessage());
    }
}//GEN-LAST:event_txa_QuestaoCorpoMouseReleased

public void setTrecho()
{
    StringBuilder strCorpo = new StringBuilder();
    strCorpo.append(texto2Html(txa_QuestaoCorpo.getText().trim()));

    hepCorpoQuestao.setText(strCorpo.toString());
}

public void setTrechoNivelFacil()
{
    StringBuilder strCorpo = new StringBuilder();
    StringBuilder strCorpoHtml = new StringBuilder();
    StringBuilder strDefeito = new StringBuilder();
    
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
    //txa_QuestaoCorpo.setText(strCorpo.toString());
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
            case '<': htmlBuilder.append("&lt;");insertIndexFix = insertIndexFix+3; break;
            case '>': htmlBuilder.append("&gt;");insertIndexFix = insertIndexFix+3; break;
            case '&': htmlBuilder.append("&amp;");insertIndexFix = insertIndexFix+4; break;
            case '"': htmlBuilder.append("&quot;");insertIndexFix = insertIndexFix+5; break;
            case '\n':htmlBuilder.append("<br>");insertIndexFix = insertIndexFix+3; break;
            case '\t':htmlBuilder.append("&nbsp;&nbsp;&nbsp;");insertIndexFix = insertIndexFix+17; break;
                
            case 'á': htmlBuilder.append("&aacute;"); insertIndexFix = insertIndexFix+7; break;
            case 'é': htmlBuilder.append("&eacute;"); insertIndexFix = insertIndexFix+7; break;
            case 'í': htmlBuilder.append("&iacute;"); insertIndexFix = insertIndexFix+7; break;
            case 'ó': htmlBuilder.append("&oacute;"); insertIndexFix = insertIndexFix+7; break;
            case 'ú': htmlBuilder.append("&uacute;"); insertIndexFix = insertIndexFix+7; break;
            case 'Á': htmlBuilder.append("&Aacute;"); insertIndexFix = insertIndexFix+7; break;
            case 'É': htmlBuilder.append("&Eacute;"); insertIndexFix = insertIndexFix+7; break;
            case 'Í': htmlBuilder.append("&Iacute;"); insertIndexFix = insertIndexFix+7; break;
            case 'Ó': htmlBuilder.append("&Oacute;"); insertIndexFix = insertIndexFix+7; break;
            case 'Ú': htmlBuilder.append("&Uacute;"); insertIndexFix = insertIndexFix+7; break;
                
            case 'â': htmlBuilder.append("&acirc;"); insertIndexFix = insertIndexFix+6; break;
            case 'ê': htmlBuilder.append("&ecirc;"); insertIndexFix = insertIndexFix+6; break;
            case 'ô': htmlBuilder.append("&ocirc;"); insertIndexFix = insertIndexFix+6; break;
            case 'Â': htmlBuilder.append("&Acirc;"); insertIndexFix = insertIndexFix+6; break;
            case 'Ê': htmlBuilder.append("&Ecirc;"); insertIndexFix = insertIndexFix+6; break;
            case 'Ô': htmlBuilder.append("&Ocirc;"); insertIndexFix = insertIndexFix+6; break;
                
            case 'ç': htmlBuilder.append("&ccedil;"); insertIndexFix = insertIndexFix+7; break;
            case 'Ç': htmlBuilder.append("&Ccedil;"); insertIndexFix = insertIndexFix+7; break;
                
            case 'à': htmlBuilder.append("&agrave;"); insertIndexFix = insertIndexFix+7; break;
            case 'À': htmlBuilder.append("&Agrave;"); insertIndexFix = insertIndexFix+7; break;
                
            case 'ã': htmlBuilder.append("&atilde;"); insertIndexFix = insertIndexFix+7; break;
            case 'õ': htmlBuilder.append("&otilde;"); insertIndexFix = insertIndexFix+7; break;
            case 'Ã': htmlBuilder.append("&Atilde;"); insertIndexFix = insertIndexFix+7; break;
            case 'Õ': htmlBuilder.append("&Otilde;"); insertIndexFix = insertIndexFix+7; break;
                
            case 'ü': htmlBuilder.append("&uuml;"); insertIndexFix = insertIndexFix+5; break;
            case 'Ü': htmlBuilder.append("&Uuml;"); insertIndexFix = insertIndexFix+5; break;
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
                
            case 'á': htmlBuilder.append("&aacute;"); break;
            case 'é': htmlBuilder.append("&eacute;"); break;
            case 'í': htmlBuilder.append("&iacute;"); break;
            case 'ó': htmlBuilder.append("&oacute;"); break;
            case 'ú': htmlBuilder.append("&uacute;"); break;
            case 'Á': htmlBuilder.append("&Aacute;"); break;
            case 'É': htmlBuilder.append("&Eacute;"); break;
            case 'Í': htmlBuilder.append("&Iacute;"); break;
            case 'Ó': htmlBuilder.append("&Oacute;"); break;
            case 'Ú': htmlBuilder.append("&Uacute;"); break;
                
            case 'â': htmlBuilder.append("&acirc;"); break;
            case 'ê': htmlBuilder.append("&ecirc;"); break;
            case 'ô': htmlBuilder.append("&ocirc;"); break;
            case 'Â': htmlBuilder.append("&Acirc;"); break;
            case 'Ê': htmlBuilder.append("&Ecirc;"); break;
            case 'Ô': htmlBuilder.append("&Ocirc;"); break;
                
            case 'ç': htmlBuilder.append("&ccedil;"); break;
            case 'Ç': htmlBuilder.append("&Ccedil;"); break;
                
            case 'à': htmlBuilder.append("&agrave;"); break;
            case 'À': htmlBuilder.append("&Agrave;"); break;
                
            case 'ã': htmlBuilder.append("&atilde;"); break;
            case 'õ': htmlBuilder.append("&otilde;"); break;
            case 'Ã': htmlBuilder.append("&Atilde;"); break;
            case 'Õ': htmlBuilder.append("&Otilde;"); break;
                
            case 'ü': htmlBuilder.append("&uuml;"); break;
            case 'Ü': htmlBuilder.append("&Uuml;"); break;
            
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
    private java.awt.Label label1;
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
