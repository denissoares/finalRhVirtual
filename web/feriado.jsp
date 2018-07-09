<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Cadastro de Feriado</title>
    </head>
    <body>
        <!-- Parte referente a barra de menu do código -->
        <nav id="menu">
            <ul>
                <li><a href="cadastrarfuncionario.jsp">Cadastrar Funcionários</a></li>
                <li><a href="funcionario.jsp">Listar Funcionários</a></li>
                <li><a href="ocorrencia.jsp">Ocorrência</a></li>
                <li><a href="feriado.jsp">Cadastrar Feriado</a></li>
                <li><a href="listarferiado.jsp">Listar Feriado</a></li>            
            </ul>
        </nav>
        <h1></h1>
        <div class="text-center">
            <div style="padding-top:30px" class="container">
                <form action="feriadocadastrado.jsp" method="post" class="mainbox col-md-3 col-md-offset-4 col-sm-8 col-sm-offset-2">
                    Nome do Feriado:
                    <input type="text" name="nome" class="form-control" placeholder="Nome Feriado"><br>

                    Data do Feriado:
                    <input type="text" name="data" class="form-control" placeholder="__/__"><br>
                    <div class="text-center">
                    <input type="submit" value="Cadastrar Feriado" class="btn btn-success"/>
                    </div>
                </form>
            </div>
        </div>
        
    </body>
</html>
