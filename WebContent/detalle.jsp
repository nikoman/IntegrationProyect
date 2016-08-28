<%@ page import="com.emergys.Product" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
<%
String partNumber = request.getParameter("p");
Product product = new Product(partNumber+"-attr");
%>
<div class="details-product">
    <ul class="breadcrumb">
        <li>Productos</li>
        <li>Urrea</li>
        <li>Categor�a</li>
    </ul>
    <div class="images-product">
        <ul class="list-images">
            <li><img src="" alt="img"></li>
            <li><img src="" alt="img"></li>
        </ul>
        <div class="big-picture"><img src="<%=product.getFullImage()%>" alt="img" style="width: 400px;"></div>
    </div>
    <div class="description-product">
        <h1><%=product.getName()%></h1>
        <strong><%=product.getShortDescription()%></strong>
        <div class="cost">$ <%=product.getPrice()%></div>
        <div class="features"><%=product.getLongDescription()%></div>
        <ul class="options-product">
            <li>Instructivo</li>
            <li>Lista de precios</li>
            <li>Ficha t�cnica</li>
            <li>Ver video</li>
        </ul>
        <ul class="share-product">
            <li>Facebook</li>
            <li>Twitter</li>
            <li>Mail</li>
        </ul>
    </div>
    <%List<String> attributes = product.getAttributes(); 
    if(attributes.size()>0){
    %>
    <ul class="features-list">
    	<%for(String attibute : attributes){ %>
        <li><%=attibute%></li>
        <%}%>
    </ul>
    <%}%>
</div>
</body>
</html>