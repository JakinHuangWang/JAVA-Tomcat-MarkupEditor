<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
    <link rel="stylesheet" href="styles.css" type="text/css">
</head>
<style>
    h2 {
        text-align: center;
    }
    .container {
        width: 40%;
        margin: auto;
    }
    .spacing {
        margin: 20px auto;
    }
    .button-row {
        display: flex;
        justify-content: space-between;
    }
    .section {
        display: flex;
        flex-direction: column;
    }

    input {
        border-radius: 4px;
        border: 1px solid lightgray;
    }

    input:focus {
        box-shadow: 0 0 0 0.125em #46d246;
    }

    textarea {
        font-size: 14px;
        border-radius: 6px;
        border: 1px solid lightgray;
        padding: 5px;
    }

    textarea:focus {
        box-shadow: 0 0 0 0.125em #46d246;
    }

</style>
<body>
    <div class="container">
        <h2>Edit Post</h2>
        <form method="POST">
            <div class="spacing button-row">
                <button type="submit" formaction="${path}?action=save">Save</button>
                <button type="submit" formaction="${path}?action=list&username=${username}">Close</button>
                <button type="submit" formaction="${path}?action=preview">Preview</button>
                <button type="submit" formaction="${path}?action=delete&username=${username}&postid=${postid}">Delete</button>
            </div>
            <input type="hidden" id="postid" name="postid" value="${postid}">
            <input type="hidden" id="username" name="username" value="${username}">
            <div class="spacing section">
                <label for="title">Title</label>
                <input type="text" id="title" name="title" value="${title}" required>
            </div>
            <div class="spacing section">
                <label for="body">Body</label>
                <textarea style="height: 20rem;" name="body" id="body" required>${body}</textarea>
            </div>
        </form>
    </div>
</body>
</html>
