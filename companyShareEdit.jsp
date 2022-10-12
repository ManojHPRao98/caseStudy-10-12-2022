<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1 style = "color:red;">
<u><i>Company Share Price Update</i></u>
</h1>
<form:form method="post" action="companyShare-edit" modelAttribute="companyShareRecord">
<h2>
Company Id: <form:input type="text" path="companyId" readonly="readonly"/>
<h2>
<br/><br/>
Company Name:<form:input type="text" path="companyName" readonly="readonly"/>
<br/><br/>
Enter New Share Price:<form:input type="text" path="sharePrice"/>
<br/><br/>
<button type="submit"> Submit</button>

</h2>

</form:form>
<br/><br/>
 <a href="/index"> Return </a>
</div>
</body>
</html>