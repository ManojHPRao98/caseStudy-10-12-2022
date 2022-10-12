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
<h2>
	Company Id:${companyShare.companyId} 
	<br/><br/>
   	Company Name:${companyShare.companyName}
   	<br/><br/> 
    Company SharePrice:${companyShare.sharePrice}
    <br/><br/> 
  <a href="/index">Return</a>
  </h2>
  </div>
</body>
</html>