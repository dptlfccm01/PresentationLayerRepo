<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Login page</title>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"/>
		<style>
			fieldset {
				width : 50%;
				margin : 0 auto;
			}
		</style>
	</head>
	<body>
		<nav class="navbar navbar-inverse" role="navigation">
			<header>
				<div class="navbar-header">
					<a class="navbar-brand" href="#" style="color:white">MyExpenses</a>
				</div>
			</header>
		</nav>
		<form method="post" action="/PresentationLayerTest/welcome.html">
			<fieldset>
			<legend>Login</legend>
			<div id="section">
				Username : <input type="text" name="username" />
				<br /><br />
				Password : <input type="password" name="password" />
				<br /><br />
				<input type="submit" name="submit" value="Login" />
			</div>
			</fieldset>
		</form>
	</body>
</html>