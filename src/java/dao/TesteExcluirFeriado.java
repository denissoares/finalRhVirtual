
package dao;

import Modelo.Feriado;
import java.sql.SQLException;

public class TesteExcluirFeriado {
    
    public static void main(String[] args) {
        FeriadoDAO dao = new FeriadoDAO();
        Feriado feriado = new Feriado();

        feriado.setNome("novo");
        
        try {
            dao.excluir(feriado);
        } catch (SQLException e) {
            System.out.println(e);
        }
    }  
}
