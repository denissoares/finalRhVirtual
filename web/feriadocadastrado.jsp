<%@page import="dao.FeriadoDAO"%>
<%@page import="Modelo.Feriado"%>
<%
    Feriado feriado = new Feriado();
    
    feriado.setNome(request.getParameter("nome"));
    feriado.setData(request.getParameter("data"));
    
    FeriadoDAO dao = new FeriadoDAO();
    
    Boolean ret = dao.inserir(feriado);
    String  msg;
    String titulo;
    if(ret == true){
        msg = "Feriado " + request.getParameter("nome") + " cadastrado com Sucesso!";
        titulo = "Cadastrado com Sucesso";
    }
    else{
        msg = "Erro ao cadastrar";
        titulo = "Erro ao Cadastrar";
    }
    
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title><%=titulo%></title>
        
    </head>
    <body>
        <h3 class="text-center"><%=msg%></h3><br>
        
        
        <a href="feriado.jsp"><button type="button" class="btn btn-link">Voltar</button></a>
        
        
        
    </body>
</html>