<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
       <%
String cookieName = "email";
Cookie cookies [] = request.getCookies ();
Cookie myCookie = null;
if (cookies != null)
{
for (int i = 0; i < cookies.length; i++) 
{
if (cookies [i].getName().equals (cookieName))
{
myCookie = cookies[i];
break;
}
}
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin_productlist</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<style>
/* NEVIGATION BAR */
body {margin:0;}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  font-family: Verdana;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
    background-color: #8C5DBF;
    color: white;
}</style>
</head>
<body>
<!--  NEVIGATION  -->
<div align="center" style="background-color: #baa7c8; font-size:4vw; font-family: sans-serif;">
CLOTHING
</div>
<div class="topnav">
  <a  href="adminpanel.jsp">Customer database</a>
  <a href="adminupload.jsp">Upload product</a>
  <a class="active" href="adminproductlist.jsp">List of products</a>
  <a  href="adminordercontrol.jsp">List of orders</a>
  
</div>
<br/>
<center> 
<h2>
<%
if (myCookie == null) {
%>

You are not logged in<br/>
<a href="login.jsp">Please Login</a>
<%
} else {
%> 
<p>Welcome Admin: <%=myCookie.getValue()%></p>
<a href='logout.jsp'>Log out</a>

</h2>
 
   <br/> 
   
  <%@include file="viewproduct.jsp" %>
<br><br>
<%
}
%>
   
     
      </center> </body>


</html>