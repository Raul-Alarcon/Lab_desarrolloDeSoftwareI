/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package com.mycompany.swingtarea;

import javax.swing.JOptionPane;

/**
 *
 * @author A21-PC11
 */
public class jframe1 extends javax.swing.JFrame {

    /**
     * Creates new form jframe1
     */
    public jframe1() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        lbCiclo = new javax.swing.JLabel();
        lbCarrera = new javax.swing.JLabel();
        cbCarrera = new javax.swing.JComboBox<>();
        lbTituloVentana = new javax.swing.JLabel();
        rbCiclo01 = new javax.swing.JRadioButton();
        lbNombre = new javax.swing.JLabel();
        rbCiclo02 = new javax.swing.JRadioButton();
        btRegistrar15 = new javax.swing.JButton();
        tfNombre = new javax.swing.JTextField();
        lbApellido = new javax.swing.JLabel();
        tfApellido = new javax.swing.JTextField();
        lbCorreo = new javax.swing.JLabel();
        tfCorreo = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        lbCiclo.setText("Ciclo actual:");

        lbCarrera.setText("Carrera:");

        cbCarrera.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione una opción", "Ingeniería en Sistemas Computacionales", "Ingeniería Industrial", "Ingeniería Eléctrica", "Ingeniería en Agronegocios" }));

        lbTituloVentana.setText("DATOS DEL ALUMNO");

        buttonGroup1.add(rbCiclo01);
        rbCiclo01.setText("Ciclo 01");

        lbNombre.setText("Nombre:");

        buttonGroup1.add(rbCiclo02);
        rbCiclo02.setText("Ciclo 02");

        btRegistrar15.setText("REGISTRAR");
        btRegistrar15.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btRegistrar15ActionPerformed(evt);
            }
        });

        lbApellido.setText("Apellido:");

        lbCorreo.setText("Correo:");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(36, 36, 36)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(lbApellido)
                    .addComponent(lbNombre)
                    .addComponent(lbCorreo)
                    .addComponent(lbCarrera)
                    .addComponent(lbCiclo))
                .addGap(67, 67, 67)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(lbTituloVentana)
                    .addComponent(cbCarrera, 0, 265, Short.MAX_VALUE)
                    .addComponent(tfNombre)
                    .addComponent(tfApellido)
                    .addComponent(tfCorreo)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(rbCiclo01)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(rbCiclo02)))
                .addContainerGap(70, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btRegistrar15)
                .addGap(205, 205, 205))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addComponent(lbTituloVentana)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbNombre)
                    .addComponent(tfNombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(28, 28, 28)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbApellido)
                    .addComponent(tfApellido, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(28, 28, 28)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbCorreo)
                    .addComponent(tfCorreo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(35, 35, 35)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbCarrera)
                    .addComponent(cbCarrera, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(36, 36, 36)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbCiclo)
                    .addComponent(rbCiclo01)
                    .addComponent(rbCiclo02))
                .addGap(47, 47, 47)
                .addComponent(btRegistrar15)
                .addContainerGap(48, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btRegistrar15ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btRegistrar15ActionPerformed
        // TODO add your handling code here:

        String cicloActual = "";
        String carrera = "";
        String input1 = tfNombre.getText();
        String input2 = tfApellido.getText();
        String input3 = tfCorreo.getText();

        //Convertir el dato obtenido del combobox a string
        String carreraSeleccionada = (String) cbCarrera.getSelectedItem();
        
        // validacion de jtext
        if (input1.isEmpty()) {
            JOptionPane.showMessageDialog(this, "El campo de nombre no puede estar vacío", "Error", JOptionPane.ERROR_MESSAGE);
        }if (input2.isEmpty()) {
            JOptionPane.showMessageDialog(this, "El campo de apellido no puede estar vacío", "Error", JOptionPane.ERROR_MESSAGE);
        }if (input3.isEmpty()) {
            JOptionPane.showMessageDialog(this, "El campo de correo no puede estar vacío", "Error", JOptionPane.ERROR_MESSAGE);
        }
        
        //Validando opcion por defecto
        if ("Seleccione una opción".equals(carreraSeleccionada)) {
            carrera = "-1";

            JOptionPane.showMessageDialog(this, "Seleccione una carrera.", "Error", JOptionPane.ERROR_MESSAGE);

        }

        // Validacion de ciclo
        if (this.rbCiclo01.isSelected()) {
            cicloActual = "01";
        } else if (this.rbCiclo02.isSelected()) {
            cicloActual = "02";
        } else {
            cicloActual = "-1";

            JOptionPane.showMessageDialog(this, "Seleccione un ciclo.", "Error", JOptionPane.ERROR_MESSAGE);

        }

        if(!"-1".equals(cicloActual) && !"-1".equals(carrera) && !input1.isEmpty() && !input2.isEmpty()){

            JOptionPane.showMessageDialog(this, "Registro exitoso de "
                + this.tfNombre.getText() + " "
                + this.tfApellido.getText()
                + " estudiante de la carrera de "
                + this.cbCarrera.getSelectedItem()
                + " con el correo "
                + this.tfCorreo.getText()
                + " en el ciclo " + cicloActual);

        }if("-1".equals(cicloActual) && "-1".equals(carrera) && input1.isEmpty() && input2.isEmpty()){

            JOptionPane.showMessageDialog(this, "Rellene los campos para seguir...");

        }

    }//GEN-LAST:event_btRegistrar15ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(jframe1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(jframe1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(jframe1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(jframe1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new jframe1().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btRegistrar;
    private javax.swing.JButton btRegistrar1;
    private javax.swing.JButton btRegistrar10;
    private javax.swing.JButton btRegistrar11;
    private javax.swing.JButton btRegistrar12;
    private javax.swing.JButton btRegistrar13;
    private javax.swing.JButton btRegistrar14;
    private javax.swing.JButton btRegistrar15;
    private javax.swing.JButton btRegistrar2;
    private javax.swing.JButton btRegistrar3;
    private javax.swing.JButton btRegistrar4;
    private javax.swing.JButton btRegistrar5;
    private javax.swing.JButton btRegistrar6;
    private javax.swing.JButton btRegistrar7;
    private javax.swing.JButton btRegistrar8;
    private javax.swing.JButton btRegistrar9;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JComboBox<String> cbCarrera;
    private javax.swing.JLabel lbApellido;
    private javax.swing.JLabel lbCarrera;
    private javax.swing.JLabel lbCiclo;
    private javax.swing.JLabel lbCorreo;
    private javax.swing.JLabel lbNombre;
    private javax.swing.JLabel lbTituloVentana;
    private javax.swing.JRadioButton rbCiclo01;
    private javax.swing.JRadioButton rbCiclo02;
    private javax.swing.JTextField tfApellido;
    private javax.swing.JTextField tfCorreo;
    private javax.swing.JTextField tfNombre;
    // End of variables declaration//GEN-END:variables
}