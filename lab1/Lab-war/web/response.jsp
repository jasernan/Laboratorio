<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : response.jsp
    Created on : 21/09/2022, 02:05:13 PM
    Author     : julia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>pagina Jsp</title>
    </head>
    <body>
        <h1>Hello World!  </h1>
        <jsp:useBean id="myBean" scope="page" class="unipiloto.edu.NameHandler" />
        
        <jsp:setProperty name="myBean" property="nombre" />
        <jsp:setProperty name="myBean" property="fechaNacimiento" />
        <jsp:setProperty name="myBean" property="hora"/>
        <jsp:setProperty name="myBean" property="edad" value= "{<%=myBean%>}" />
          Hola! <c:choose>
                <c:when test="${myBean.hora>=12 && myBean.hora<=18}">
                    Buenas tardes
                </c:when>
                <c:when test="${myBean.hora>=19 && myBean.hora<=23}"> 
                    Buenas noches
                </c:when>
                <c:otherwise>
                    Buenos dias
                </c:otherwise>
            </c:choose>

        Bienvenido estudiante <jsp:getProperty name="myBean" property="nombre" />
        al curso de metodos, su fecha de nacimiento es: <jsp:getProperty name="myBean" property="fechaNacimiento" />
        su edad es: <jsp:getProperty name="myBean" property="edad" />
    </body>
</html>
