
package dao;

import Modelo.Feriado;
import java.sql.SQLException;

public class TesteBuscaFeriado {
    
        public static void main(String[] args) {
        FeriadoDAO dao = new FeriadoDAO();
        Feriado feriado = new Feriado();

        feriado.setNome("denis");
        
        
        feriado.getNome();
        feriado.getData();
        
        
        try {
            dao.buscar(feriado);
            System.out.println(feriado.getNome());
            System.out.println(feriado.getData());
        } catch (SQLException e) {
            System.out.println(e);
        }
    } 
    
}
