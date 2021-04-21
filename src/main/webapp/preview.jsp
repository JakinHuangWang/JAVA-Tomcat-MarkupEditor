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
        margin-top: 5%;
    }
</style>
<body>
    <div class="container">
        <button onclick="location.href = 'javascript:history.back()'">Close Preview</button>
        <h1>${title}</h1>
        <div>${body}</div>
    </div>
</body>
</html>
