<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<title>View All Transactions</title>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"/>
		<style>
			thead {
				background-color : #3366FF;
				color : white;
			}
			fieldset {
				width : 75%;
				margin : 0 auto;
			}
			.balance {
				font-weight : bold;
			}
		</style>
	</head>
	<body>
		<nav class="navbar navbar-inverse" role="navigation">
			<header>
				<div class="navbar-header">
					<a class="navbar-brand" href="#" style="color:white">View All Transactions</a>
				</div>
			</header>
		</nav>
		<form method="post" action="">
			<fieldset>
			<legend>View All Transactions</legend>
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<th>Transaction ID</th>
						<th>Description</th>
						<th>Value</th>
						<th>Transaction Type</th>
					</thead>
					<c:forEach var="transaction" items="${transactionList}">
						<tr>
							<td><c:out value="${transaction.transactionId}" /></td>
							<td><c:out value="${transaction.description}" /></td>
							<td><c:out value="${transaction.value}" /></td>
							<td><c:out value="${transaction.transactionType}" /></td>
						</tr>
					</c:forEach>
					<tr>
						<td class="balance">Balance (GBP)</td>
						<td />
						<td class="balance">0.00</td>
						<td />
					</tr>
				</table>
				</div>
			</fieldset>
		</form>
	</body>
</html>