<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Organization Tool</title>
</head>
<body>

<style>
body {
 background-color:
 width: 100%;
 height: 100%;
}
h1 {
  font-family:'Leckerli One' , cursive;
  font-size: 38px;
  color: #800000;
  text-align: center;
  }
h2 {
	font-family: 'Leckerli One';
  color: #669999;
	font-size: 18px;
  text-align: center;
}
h3 {
	text-transform: uppercase;
	font-family: 'Noticia Text';
	color: #800000;
	font-weight: bold;
	letter-spacing: 1px;
	font-size: 20px;
  text-align: center;
}
</style>

    <center>
        <h1>To Do List!</h1>

    </center>
    <div align="center">
        <table border="1" cell padding="5">
            <caption><h3>This is what you have to do today!</h3></caption>
            <tr>
                <th>#</th>
                <th>Title</th>
                <th>Description</th>
                <th>Edit/Delete</th>
            </tr>
            <c:forEach var="list" items="${listItems}">
                <tr>
                    <td><c:out value="${list.id}" /></td>
                    <td><c:out value="${list.title}" /></td>
                    <td><c:out value="${list.desc}" /></td>
                    <td>
                        <a href="/edit?id=<c:out value='${list.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/delete?id=<c:out value='${list.id}' />">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <h2>
                <a href="/new">Add New Item</a>
                &nbsp;&nbsp;&nbsp;
                <a href="/list">List All Items</a>
            </h2>
</body>
</html>