/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Modelo.Feriado;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author denis
 */
public class FeriadoDAO {
    
        public FeriadoDAO(){
         
}   
    public boolean inserir(Feriado feriado) throws SQLException{
        
        Conexao conn = new Conexao();
        
        String sql  = "INSERT INTO FERIADO(nome, data) VALUES (?,?)";
        
        Boolean retorno = false;
        
        PreparedStatement pst = conn.getConecao().prepareStatement(sql);
        
        try{
        
        pst.setString(1, feriado.getNome());
        pst.setString(2, feriado.getData());
        
        if(pst.executeUpdate()>0){
            
            retorno = true;
        }
        
        } catch (SQLException ex){
            Logger.getLogger(FeriadoDAO.class.getName()).log(Level.SEVERE, null, ex);
            retorno = false;
        }
        
        return retorno;
    }
    
    
    public List<Feriado> listar() throws SQLException{
        
        Conexao conn = new Conexao();
        
        String sql  = "SELECT * FROM FERIADO";
        
        List<Feriado> retorno = new ArrayList<>();
        
        PreparedStatement pst = conn.getConecao().prepareStatement(sql);
        
        try {
            ResultSet res = pst.executeQuery();
            
            while(res.next()){
                
                Feriado item = new Feriado();
                
                item.setNome(res.getString("nome"));
                item.setData(res.getString("data"));
                
                retorno.add(item);
            }
            
       
        } catch (SQLException ex){
            Logger.getLogger(FeriadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retorno;
                  
    }
    
    
    
        public boolean excluir(Feriado feriado) throws SQLException{
        
        Conexao conn = new Conexao();
        
        String sql  = "DELETE FROM FERIADO WHERE nome = ?";
        
        Boolean retorno = false;
        
        PreparedStatement pst = conn.getConecao().prepareStatement(sql);
        
        try{
        
        pst.setString(1, feriado.getNome());
        
        
        if(pst.executeUpdate()>0){
            
            retorno = true;
        }
        
        } catch (SQLException ex){
            Logger.getLogger(FeriadoDAO.class.getName()).log(Level.SEVERE, null, ex);
            retorno = false;
        }
        
        return retorno;
    }
    
    
    public boolean atualizar(Feriado feriado)throws SQLException{
        
        Conexao conn = new Conexao();
        
        String sql  = "UPDATE FERIADO SET data=? WHERE nome=?";
        
        Boolean retorno = false;
        
        PreparedStatement pst = conn.getConecao().prepareStatement(sql);
        
        try{
        
        pst.setString(1, feriado.getData());
        pst.setString(2, feriado.getNome());
        
        if(pst.executeUpdate()>0){
            
            retorno = true;
        }
        
        } catch (SQLException ex){
            Logger.getLogger(FeriadoDAO.class.getName()).log(Level.SEVERE, null, ex);
            retorno = false;
        }
        
        return retorno;
    }
    
    
        public Feriado buscar(Feriado feriado) throws SQLException{
        
        Conexao conn = new Conexao();
        
        String sql  = "SELECT * FROM FERIADO WHERE nome=?";
        
        Feriado retorno = null;
        
        PreparedStatement pst = conn.getConecao().prepareStatement(sql);
        
        try {
            pst.setString(1, feriado.getNome());
            
            ResultSet res = pst.executeQuery();
            
            if(res.next()){
                
                retorno = new Feriado();
                retorno.setNome(res.getString("nome"));
                retorno.setData(res.getString("data")); 
            }
            
       
        } catch (SQLException ex){
            Logger.getLogger(FeriadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retorno;
                  
    }
    
}
