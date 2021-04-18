<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
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
        <h1>Edit Post</h1>
        <h1>${username}</h1>
        <h1>${postid}</h1>
        <h1>${Warning}</h1>
        <form method="POST">
            <div class="spacing">
                <button type="submit" formaction="${path}?action=save">Save</button>
                <button type="submit" formaction="${path}?action=list">Close</button>
                <button type="submit" formaction="${path}?action=preview">Preview</button>
                <button type="submit" formaction="${path}?action=delete">Delete</button>
            </div>
            <input type="hidden" id="postid" name="postid" value="${postid}">
            <input type="hidden" id="username" name="username" value="${username}">
            <div class="spacing section">
                <label for="title">Title</label>
                <input type="text" id="title" name="title" value="${title}">
            </div>
            <div class="spacing section">
                <label for="body">Body</label>
                <textarea style="height: 20rem;" name="body" id="body">${body}</textarea>
            </div>
        </form>
    </div>
</body>
</html>
