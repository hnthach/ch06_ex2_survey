<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey Result</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
<div class="container">
    <h2>🎉 Thanks for taking our survey!</h2>
    <p>Here is the information that you entered:</p>

    <p><span class="label">Email:</span>
        <span class="value">${user.email}</span></p>

    <p><span class="label">First Name:</span>
        <span class="value">${user.firstName}</span></p>

    <p><span class="label">Last Name:</span>
        <span class="value">${user.lastName}</span></p>

    <p><span class="label">Heard From:</span>
        <span class="value">${user.heardFrom}</span></p>

    <p><span class="label">Updates:</span>
        <span class="value">${user.wantsUpdates}</span></p>

    <c:if test="${user.wantsUpdates eq 'Yes'}">
        <p><span class="label">Contact Via:</span>
            <span class="value">${user.contactVia}</span></p>
    </c:if>

    <form action="index.html">
        <button type="submit" class="btn">Return</button>
    </form>

    <div class="footer">© 2025 Huỳnh Ngọc Thạch</div>
</div>
</body>
</html>
