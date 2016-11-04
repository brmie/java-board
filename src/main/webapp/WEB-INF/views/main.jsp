<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>
	Hello world!  HOHO
</h1>

<div class="container">
  <h1>This is secured!</h1>
  
  <p>
    Hello 
    <c:choose><c:when test="${pageContext.request.remoteUser != null}">
    ${pageContext.request.remoteUser}</c:when>
    <c:otherwise>Stranger</c:otherwise>
    </c:choose>
    !!
  </p>
  
  <form class="form-inline" action="/logout" method="post">
    <input type="submit" value="Log out" />
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  </form>
</div>
