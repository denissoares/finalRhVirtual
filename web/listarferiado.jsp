<%@page import="java.util.List"%>
<%@page import="dao.FeriadoDAO"%>
<%@page import="Modelo.Feriado"%>


<% 
    FeriadoDAO dao = new FeriadoDAO();
    List<Feriado> lista;
    
    lista = dao.listar();

%> 


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
        <title>Listar Feriados</title>
    </head>
    <body>
           <!-- Parte referente a barra de menu do código -->
        <nav id="menu">
            <ul>
                <li><a href="funcionario.jsp">Funcionários</a></li>
                <li><a href="ocorrencia.html">Ocorrência</a></li>
                <li><a href="feriado.jsp">Cadastrar Feriado</a></li>
                <li><a href="listarferiado.jsp">Listar Feriado</a></li>
                
            </ul>
        </nav>
        <div class="container">
            <h1 class="text-center">Listar Feriados Cadastrado</h1><br>
            <table class="table">         
                <tr>
                    <th>Nome do Feriado</th>
                    <th>Dia do Feriado</th>
                    <th></th>
                    <th></th>
                </tr>
                <%
                for(Feriado registro: lista)
                {
                %>
                <tr>
                    <td><%=registro.getNome()%></td>
                    <td><%=registro.getData()%></td>
                    <td><a href="atualizarferiado.jsp=<%=registro.getNome()%>">Editar</a></td><td><a href="excluirferiado.jsp?nome=<%=registro.getNome()%>">Excluir</a>
                </tr>
                <%
                }%>
            </table>
        </div>
    </body>
</html>
