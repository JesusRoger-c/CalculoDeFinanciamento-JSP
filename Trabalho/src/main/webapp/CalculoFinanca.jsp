<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="erro.jsp"%>
<!DOCTYPE html>
<html>
<head>

<style>

body {
	margin: 0;
	background: #201b2c;
}

.logo {
	text-align: center;
	color: #00ff88;
}

.result{
color: white;
margin: 20px;
}

h3{

color: white;

}


input{
	width: 12%;
	padding: 10px 0px;
	margin: 500;
	border: none;
	border-radius: 8px;
	outline: none;
	text-transform: uppercase;
	font-weight: 800;
	letter-spacing: 3px;
	color: #2b134b;
	background: #00ff88;
	cursor: pointer;
	box-shadow: 0px 10px 40px -12px #00ff8052;
}

img{
width: 200px;
height:200px;
}



</style>
<meta charset="UTF-8">
<title>Financiamento</title>
</head>
<body>
<h1 class="logo">FinançasPro</h1><br>

<img src="financiamento02.png" alt="financiamento"><br>

	<%
	double resultado = 0;
	double vlTotal = Double.parseDouble(request.getParameter("vlTotal"));
	double entrada = Double.parseDouble(request.getParameter("entrada"));
	int parcelas = Integer.parseInt(request.getParameter("parcelas"));

	resultado = (vlTotal - entrada) / parcelas;

	if (entrada < vlTotal * 0.2) {

		out.print("A entrada deve ser de pelo menos 20% do valor total");
	} else if (parcelas < 6) {
		out.print("O numero minimo de parcelas devem ser 6");
	} else {

	}
	%>
	
	
	<h2 class="result">Sua parcela será de:<br> <%=parcelas%> x <%=resultado%> reais</h2>
	<br>
	<br><br><br><br><br><br><br><br><br><br>

	<form Action="Login.jsp" Method="get">

		<input type="submit" value="SAIR" name="button">

	</form>

</body>
</html>