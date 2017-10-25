<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dal.ProdutoDAO"%>
<%@ page import="model.Produto"%>
<%@ page import="java.util.ArrayList"%>

<%
	ArrayList<Produto> produtos = ProdutoDAO.listarProduto();
%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<title>Listar Produtos</title>
</head>
<body>
	<table class="table table-hover table-striped">
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Preço</th>
			<th>Quantidade</th>
			<th>Categoria</th>
		</tr>
		<%
			for (Produto produtoCadastrado : produtos) {
		%>
		<tr>
			<td><%=produtoCadastrado.getId()%></td>
			<td><%=produtoCadastrado.getNome()%></td>
			<td><%=produtoCadastrado.getPreco()%></td>
			<td><%=produtoCadastrado.getQuantidade()%></td>
			<td><%=produtoCadastrado.getCategoria()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>