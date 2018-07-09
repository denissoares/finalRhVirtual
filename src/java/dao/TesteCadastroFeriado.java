
package dao;

import Modelo.Feriado;
import java.sql.SQLException;

public class TesteCadastroFeriado {
    
        public static void main(String[] args) {
        
        Feriado feriado = new Feriado();
        FeriadoDAO dao = new FeriadoDAO();
        
        
        feriado.setNome("Denis");
        feriado.setData("Rua Três");
        
        try {
            dao.inserir(feriado);
        } catch (SQLException e) {
            System.out.println(e);
        }   
    }
    
}
