<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
        <title>Cadastro de Feriado</title>
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
        <h1></h1>
        <form action="feriadocadastrado.jsp" method="post">
            Nome do Feriado:
            <input type="text" name="nome">
            
            Data do Feriado:
            <input type="text" name="data">
            
            <input type="submit" value="Cadastrar Feriado" />
        </form>
        
    </body>
</html>
