<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Preview Post</title>
</head>
<style>
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .spacing {
        margin: 10px auto;
    }
    .section {
        display: flex;
        flex-direction: column;
    }
</style>
<body>
    <div class="container">
        <h1>${path}</h1>
        <h1>List Post</h1>
        <table border="1" style="border-collapse: collapse">
            <c:forEach  var = "row" items = "${result.rows}">
                <tr>
                    <td><c:out value = "${row.username}" /></td>
                    <td><c:out value = "${row.postid}" /></td>
                    <td><c:out value = "${row.title}" /></td>
                    <td><c:out value = "${row.body}" /></td>
                    <td><c:out value = "${row.modified}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>