<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <h1>Your order has been received. Thank you very much, and we are honored to serve you.</h1>
    <p>Below is your cart information.</p>
    <table>
        <tr>
            <th>Quantity</th>
            <th>Description</th>
            <th>Amount</th>
        </tr>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:forEach var="item" items="${cart.items}">
            <tr>
                <td>${item.quantity}</td>
                <td>${item.product.description}</td>
                <td>${item.totalCurrencyFormat}</td>
            </tr>
        </c:forEach>
    </table>

    <form action="index.jsp" method="post">
      <input type="submit" value="Continue Shopping" style="margin: 20px !important, padding: 15px !important">
    </form>

</body>
</html>