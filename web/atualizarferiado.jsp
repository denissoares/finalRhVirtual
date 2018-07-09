<%@page import="Modelo.Feriado"%>
<%@page import="dao.FeriadoDAO"%>
<%
    
    if (request.getParameter("nome")==null)
    {
        response.sendRedirect("feriado");
    }
    else
    {
        
    }
    Feriado feriado = new Feriado();
    FeriadoDAO dao = new FeriadoDAO();

    feriado.setNome(request.getParameter("nome"));

    feriado = dao.buscar(feriado);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        </nav>
        <h1></h1>
        <form action="feriadocadastrado.jsp" method="post">
            Nome do Feriado:
            <input type="text" name="nome" value="<%=feriado.getNome()%>"/>
            
            Data do Feriado:
            <input type="text" name="data" value="<%=feriado.getData()%>"/>
            
            <input type="submit" value="Cadastrar Feriado" />
        </form>
    </body>
</html>
