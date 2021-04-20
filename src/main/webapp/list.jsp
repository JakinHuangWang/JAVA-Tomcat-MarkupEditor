<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Preview Post</title>
</head>
<style>
    * {
        font-family: "Segoe UI";
    }
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

    a {
        width: fit-content;
        text-decoration: none;
        padding: 3px 5px;
        border-radius: 3px;
        color: white;
        margin: 6px auto;
    }

    .open {
        background-color: forestgreen;
        border: 1px solid forestgreen;
    }

    .open:hover {
        color: forestgreen;
        background-color: white;
    }

    .delete {
        background-color: darkred;
        border: 1px solid darkred;
    }

    .delete:hover {
        color: darkred;
        background-color: white;
    }

    td {
        padding: 10px;
    }

    table {
        border-collapse: collapse;
        width: 80%;
    }
    tr:nth-child(even) {background-color: #f2f2f2;}
</style>
<body>
    <divs class="container">
        <h2>List Post</h2>
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
    </divs>
</body>
</html>