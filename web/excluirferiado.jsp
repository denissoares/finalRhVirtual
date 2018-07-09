<%@page import="Modelo.Feriado"%>
<%@page import="dao.FeriadoDAO"%>
<% 
    String msg = "null";
    String msg2 = "null";
    if(request.getParameter("nome")==null)
    {
        msg = "Registro não enviado";
    }
    else
    {
        FeriadoDAO dao = new FeriadoDAO();
        Feriado feriado = new Feriado();
        feriado.setNome(request.getParameter("nome"));
        Boolean ret = dao.excluir(feriado);
        if(ret==true)
        {
            msg = "O Feriado "+ request.getParameter("nome") + " foi excluido com sucesso!!";
            msg2 = request.getParameter("nome") + " foi excluido!!";
        }
        else
        {
            msg = "Não cadastrado, verificar dependencia";
        }
        
        
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title><%=msg2%></title>
    </head>
    <body>
        <h1 class="text-center"><%=msg%></h1>
        
        <a href="listarferiado.jsp"><button type="button" class="btn btn-link">Voltar</button></a>
    </body>
</html>
