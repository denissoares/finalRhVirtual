
package dao;

import Modelo.Cadastro;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CadastroDAO {
    
    public List<Cadastro> listar() throws SQLException{
        
        Conexao conn = new Conexao();
        
        String sql  = "SELECT * FROM Cadastro";
        
        List<Cadastro> retorno = new ArrayList<>();
        
        PreparedStatement pst = conn.getConecao().prepareStatement(sql);
        
        try {
            ResultSet res = pst.executeQuery();
            
            while(res.next()){
                
                Cadastro item = new Cadastro();
                
                item.setNome(res.getString("nome"));
                item.setEndereco(res.getString("endereco"));
                item.setTelefone(res.getInt("telefone"));
                item.setEmail(res.getString("email"));
                item.setSenha(res.getString("senha"));
                
                
                retorno.add(item);
            }
            
       
        } catch (SQLException ex){
            Logger.getLogger(CadastroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retorno;
        
    }
    
}
