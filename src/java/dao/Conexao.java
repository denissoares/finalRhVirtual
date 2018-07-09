/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;

/**
 *
 * @author denis
 */
public class Conexao {
    
            private Connection conn;
    
    private void conectar(){
        System.out.println("Conectando ao Banco...");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/rhvirtual", "root", "1013726");
            System.out.println("Conectado!");
        } catch (ClassNotFoundException e) {
            System.out.println("Classe não encontrada");
            java.util.logging.Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, e);
        } catch (SQLException e){
            
            System.out.println(e);   
        }
    }
    
    public Connection getConecao(){
        conectar();
        
        return conn;
    }
    
}
