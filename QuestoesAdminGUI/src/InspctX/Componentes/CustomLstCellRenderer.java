/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package InspctX.Componentes;

import java.awt.Color;
import java.awt.Component;
import java.awt.Font;
import javax.swing.*;

/**
 *
 * @author Enuma
 */
public class CustomLstCellRenderer implements ListCellRenderer{
    
    private Font theFont = null;
    private Color theForeground = null;
    private Icon theIcon = null;
    private String theToolTip = "";
    
    protected DefaultListCellRenderer defaultRenderer = new DefaultListCellRenderer();
    
    @Override
    public Component getListCellRendererComponent(JList list, Object value, int index,boolean isSelected, boolean cellHasFocus) 
    {
        
        JLabel renderer = (JLabel)defaultRenderer.getListCellRendererComponent(list, value, index,isSelected, cellHasFocus);

        if (value instanceof IInspectorXEntities)
        {
            IInspectorXEntities insEnt = (IInspectorXEntities)value;
            theToolTip=insEnt.getContent();
        } 
        else 
        {
            theFont = list.getFont();
            theForeground = list.getForeground();
        }
        
        if (!isSelected) 
        {
            renderer.setForeground(theForeground);
        }
        
        if (theIcon != null) 
        {
            renderer.setIcon(theIcon);
        }
        renderer.setToolTipText(theToolTip);
        //renderer.setFont(theFont);
        return renderer;
   }
    
    
}