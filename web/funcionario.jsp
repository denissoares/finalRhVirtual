
<%@page import="java.util.List"%>
<%@page import="dao.CadastroDAO"%>
<%@page import="Modelo.Cadastro"%>
<% 
    CadastroDAO dao = new CadastroDAO();
    List<Cadastro> lista;
    
    lista = dao.listar();

%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
        <title>Listar Funcionários</title>
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
            <h1 class="text-center">Listar Funcionários Cadastrados</h1><br>
            <table class="table">         
                <tr>
                    <th>Nome</th>
                    <th>Endereço</th>
                    <th>Telefone</th>
                    <th>Email</th>
                    <th>Senha</th>
                    <th></th>
                    <th></th>
                </tr>
                <%
                for(Cadastro registro: lista)
                {
                %>
                <tr>
                    <td><%=registro.getNome()%></td>
                    <td><%=registro.getEndereco()%></td>
                    <td><%=registro.getTelefone()%></td>
                    <td><%=registro.getEmail()%></td>
                    <td><%=registro.getSenha()%></td>
                </tr>
                <%
                }%>
            </table>
        </div>
    </body>
</html>