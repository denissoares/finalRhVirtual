<%-- 
    Document   : cadastrarfuncionarioi[
    Created on : 09/07/2018, 14:09:49
    Author     : denis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/funcionario.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/funcionario.js" type="text/javascript"></script>
        <script src="resources/js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="resources/js/jquery.mask.min.js" type="text/javascript"></script>
        <title>Cadastro de Funcionário</title>
    </head>
    <body>
        <nav id="menu">
            <ul>
                <li><a href="cadastrarfuncionario.jsp">Cadastrar Funcionários</a></li>
                <li><a href="funcionario.jsp">Listar Funcionários</a></li>
                <li><a href="ocorrencia.jsp">Ocorrência</a></li>
                <li><a href="feriado.jsp">Cadastrar Feriado</a></li>
                <li><a href="listarferiado.jsp">Listar Feriado</a></li>            
            </ul>
        </nav><br><br>
            <form id="formFuncionario">
            <br>
            <label>Nome Completo: </label>
            <input type="text" name="nome" required><br>
            <label>CEP: </label>
            <input name="cep" type="text" id="cep" value="" size="10" maxlength="9" onblur="pesquisacep(this.value);" required><br>
            <label>Endereço: </label>
            <input name="rua" type="text" id="rua" readonly><br>
            <label>Número: </label>
            <input type="text" name="nome" id="numero" required><br>
            <label>Bairro: </label>
            <input name="bairro" type="text" id="bairro" readonly><br>
            <label>Cidade: </label>
            <input name="cidade" type="text" id="cidade" readonly><br>
            <label>Data Nascimento: </label>
            <input type="text" id="dataNascimento" required placeholder="__/__/____"><br>
            <label>CPF: </label>
            <input type="text" name="cpf" id="cpf" required>
            <label>RG: </label>
            <input type="text" name="rg" id="rg" required><br>
            <label>Sexo: </label>
            <input type="radio" name="sexo" value="masculino" required> Masculino &nbsp;&nbsp;&nbsp;
            <input type="radio" name="sexo" value="feminino" required> Feminino<br>
            <label>Função: </label>
            <input type="text" name="funcao"required><br>
            <label>Salário: </label>
            <input type="text" name="salario" id="salario" required><br>
            <label>Horário:</label><br>
            <label>Entrada: </label>
            <input type="text" name="horarioEntrada" id="horarioEntrada" placeholder="XX:XX">
            <label>Saída </label>
            <input type="text" name="horarioSaida" id="horarioSaida" placeholder="XX:XX"><br>
            <input type="submit" name="cadastraFuncionario" value="Cadastrar Funcionário">
        </form>
    </body>
</html>
