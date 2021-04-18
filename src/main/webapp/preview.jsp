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
        <h1>Preview Post</h1>
        <p>Text Body</p>
    </div>
</body>
</html>
