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
        <c:if test="${list != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${list == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h3>
                    <c:if test="${list != null}">
                        Edit Item
                    </c:if>
                    <c:if test="${list == null}">
                        Add New Item
                    </c:if>
                </h3>
            </caption>
                <c:if test="${list != null}">
                    <input type="hidden" name="id" value="<c:out value='${list.id}' />" />
                </c:if>

            <tr>
                   <th>Title: </th>
                      <td>
                         <input type="text" name="title" size="45"
                               value="<c:out value='${list.title}' />"
                          />
                     </td>
            </tr>

            <tr>
                <th>Description: </th>
                <td>
                    <input type="text" name="desc" size="45"
                            value="<c:out value='${list.desc}' />"
                        />
                </td>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </table>
        </form>
    </div>
            <h2>
                <a href="/new">Add New Item</a>
                &nbsp;&nbsp;&nbsp;
                <a href="/list">List All Items</a>

            </h2>
</body>

</html>