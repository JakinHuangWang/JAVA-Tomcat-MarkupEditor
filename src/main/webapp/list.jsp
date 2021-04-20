<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Preview Post</title>
    <link rel="stylesheet" href="styles.css" type="text/css">
</head>
<style>
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .section {
        display: flex;
        flex-direction: column;
    }

    a {
        width: fit-content;
        text-decoration: none;
        padding: 2px 10px;
        border-radius: 14px;
        color: white;
        margin: 6px auto;
    }

    .open {
        background-color: #46d246;
        border: 1px solid #46d246;
    }

    .open:hover {
        color: #46d246;
        background-color: white;
    }

    .delete {
        background-color: #ff6666;
        border: 1px solid #ff6666;
    }

    .delete:hover {
        color: #ff6666;
        background-color: white;
    }

    td {
        text-align: center;
    }

    table {
        border-collapse: collapse;
        width: 80%;
    }

    th {
        padding: 20px;
    }
    tr:nth-child(even) {background-color: #f2f2f2;}
</style>
<body>
    <div class="container">
        <button style="margin: 20px 0;" onclick="location.href='${path}?action=open&username=${username}&postid=0'">New Post</button>
        <table>
            <tr>
                <th>username</th>
                <th>title</th>
                <th>created</th>
                <th>modified</th>
            </tr>
            <c:forEach  var = "row" items = "${result.rows}">
                <tr>
                    <td><c:out value = "${row.username}" /></td>
                    <td><c:out value = "${row.title}" /></td>
                    <td><c:out value = "${row.created}" /></td>
                    <td><c:out value = "${row.modified}" /></td>
                    <td>
                        <div class="section">
                            <a class="open" href="${path}?action=open&username=${row.username}&postid=${row.postid}">Open</a>
                            <a class="delete" href="${path}?action=delete&username=${row.username}&postid=${row.postid}">Delete</a>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>