<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Add Transaction</title>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"/>
		<style>
			fieldset {
				width : 50%;
				margin : 0 auto;
			}
			td {
				padding-top : 10px;
				padding-bottom : 10px;
				
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
		<form method="post" action="/PresentationLayerTest/success.html">
			<fieldset>
				<legend>Add Transaction</legend>
				<div class="table-responsive">
				<table>
					<tr>
						<td>Description : </td><td><input type="text" name="description" /></td>
					</tr>
					<tr>
						<td>Value : </td><td><input type="text" name="value" /></td>
					</tr>
					<tr>
						<!--td>Transaction type : </td><td><input type="text" name="transactionType" /></td -->
						<td>Transaction type : </td>
						<td>
							<select name="transactionType">
								<option value="INCOME" selected>INCOME</option>
								<option value="EXPENDITURE">EXPENDITURE</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="submit" name="submit" value="Add Transaction" /></td><td />
					</tr>
				</table>
				</div>
			</fieldset>
		</form>
	</body>
</html>