<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
</head>
<style>
    * {
        font-family: "Segoe UI";
    }
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        width: 50%;
    }
    .spacing {
        margin: 10px auto;
    }
    .button-row {
        display: flex;
        justify-content: space-between;
    }
    .section {
        display: flex;
        flex-direction: column;
    }

    button {
        border: none;
        background-color: white;
        border-radius: 50%;
        box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
    }
</style>
<body>
    <div class="container">
        <h2>Edit Post</h2>
        <form method="POST">
            <div class="spacing button-row">
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
