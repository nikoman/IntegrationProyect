<%@ page import="com.emergys.Service" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Service service = new Service();
StringBuffer sb =  service.getProductDetail();
%>

<div class="details-product">
    <ul class="breadcrumb">
        <li>Productos</li>
        <li>Urrea</li>
        <li>Categoría</li>
    </ul>
    <div class="images-product">
        <ul class="list-images">
            <li><img src="" alt="img"></li>
            <li><img src="" alt="img"></li>
        </ul>
        <div class="big-picture"><img src="" alt="img"></div>
    </div>
    <div class="description-product">
        <h1>Nombre del producto</h1>
        <strong>Descripción larga akjsnd kja ndkjankjdnakjndasd asd asdasd</strong>
        <div class="cost">$100,000.00</div>
        <div class="features">nas kfjnjsad nflkndsaf kjndskjansf lkjsnf kjadskf jnasknkjsad nfkjsan fasdf{ñlmsad lfk añlsd fklsdak jnflkjnsa kjdn}sdf  jskf nlksajdlkajs lfja nfkjfnsa k kdsajnfkjsa fnsakjfdnskdfkas djfkjsdf nkndsfjnksadn fkasjdnfksajnfka kja ndskja sndkfjnsad kjdsakfj nasdjf nlk</div>
        <ul class="options-product">
            <li>Instructivo</li>
            <li>Lista de precios</li>
            <li>Ficha técnica</li>
            <li>Ver video</li>
        </ul>
        <ul class="share-product">
            <li>Facebook</li>
            <li>Twitter</li>
            <li>Mail</li>
        </ul>
    </div>
    <ul class="features-list">
        <li>Atributo 1</li>
        <li>Atributo 2</li>
        <li>Atributo 3</li>
        <li>Atributo 4</li>
    </ul>
</div>



</body>
</html>