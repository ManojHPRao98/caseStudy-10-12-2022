<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
   <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h3>
<a href="company-entry">Company Entry</a>
</h3>
<hr size="5" color="cyan"/>
<h2>
<table border="2">
  <tr>
    <th>Company Id</th>
    <th>Company Name</th>
    <th>Company Share Price</th>
    <th>Action</th>
    </tr>
    <c:forEach  items="${companyList}" var="company">
      <tr>
      <td>${company.companyId}</td>
      <td>${company.companyName}</td>
      <td>${company.sharePrice}</td>
      <td><h3>
      <a href="edit-company/${company.companyId}">Edit Share Price</a>
      &nbsp;&nbsp;&nbsp;
      <a href="">Edit</a>
      &nbsp;&nbsp;&nbsp;
      <a href="delete-company/${company.companyId}">Delete Company</a>
      </h3></td>
      </tr>
     </c:forEach>
  </table>
 </h2>
</div>
</body>
</html>