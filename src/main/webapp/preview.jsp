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
        <a href="javascript:history.back()">Close Preview</a>
        <div>${body}</div>
    </div>
</body>
</html>
