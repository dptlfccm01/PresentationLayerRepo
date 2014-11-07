<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<title>View All Transactions</title>
	</head>
	<body>
		<form method="post" action="">
			<fieldset>
			<legend>View All Transactions</legend>
				<table>
					<tr>
						<th>Transaction ID</th>
						<th>Description</th>
						<th>Value</th>
						<th>Transaction Type</th>
					</tr>
					<c:forEach var="transaction" items="${transactionList}">
						<tr>
							<td><c:out value="${transaction.transactionId}" /></td>
							<td><c:out value="${transaction.description}" /></td>
							<td><c:out value="${transaction.value}" /></td>
							<td><c:out value="${transaction.transactionType}" /></td>
						</tr>
					</c:forEach>
					<tr>
						<td>Balance (GBP)</td>
						<td />
						<td />
						<td>0.00</td>
					</tr>
				</table>
			</fieldset>
		</form>
	</body>
</html>