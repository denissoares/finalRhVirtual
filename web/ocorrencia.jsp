<%-- 
    Document   : ocorrencia
    Created on : 09/07/2018, 14:00:02
    Author     : denis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/ocorrencia.css" rel="stylesheet" type="text/css"/>
        <title>Cadastro Ocorrência</title>
    </head>
    <body>
            <nav id="menu">
        <ul>
            <li><a href="cadastrarfuncionario.jsp">Cadastrar Funcionários</a></li>
            <li><a href="funcionario.jsp">Listar Funcionários</a></li>
            <li><a href="ocorrencia.jsp">Ocorrência</a></li>
            <li><a href="feriado.jsp">Cadastrar Feriado</a></li>
            <li><a href="listarferiado.jsp">Listar Feriado</a></li>    
        </ul><br><br>
    </nav>
        <form class="">
        <br>
        <label>Nome do Funcionário: </label>
        <input type="text" name="nome" placeholder="Nome do Funcionário" required><br>
        <label>Gravidade: </label>
        <select required>
            <option value="">Selecione</option>
            <option value="leve">Leve</option>
            <option value="normal">Normal</option>
            <option value="grave">Grave</option>
            <option value="gravissima">Gravíssima</option>
        </select><br>
        <label>Data da Ocorrência: </label>
        <input type="text" id="dataOcorrencia" required placeholder="__/__/____"><br>
        <label>Advertência? : </label>
        <input type="radio" name="advertencia" value="sim" required> Sim &nbsp;&nbsp;&nbsp;
        <input type="radio" name="advertencia" value="nao" required> Não<br><br>
        <label>Suspensão? :&nbsp;&nbsp;&nbsp;</label>
        <input type="radio" name="suspensao" value="sim" required> Sim &nbsp;&nbsp;&nbsp;
        <input type="radio" name="suspensao" value="nao" required> Não<br><br>
        <label>Descrição da Ocorrência: </label><br>
        <textarea name="" id="" cols="30" rows="5" required placeholder="Digite a ocorrência com o funcionário: "></textarea>
        <input type="submit" name="cadastraOcorrencia" value="Cadastrar Ocorrência">
    </form>
    </body>
</html>
