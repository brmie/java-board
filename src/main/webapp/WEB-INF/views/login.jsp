<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

	<div id="contentsTitle">
		<h1>intro &gt; &lt; </h1>
	</div>
	<div id="contentsWrap">
		<div id="contentsCon">
			<h1>로그인해주세용</h1>
			
			<c:url value="/j_spring_security_check" var="loginURL"/>
			
			<form:form action="${loginURL }" method="post">
				<c:if test="${param.error == true }">
					<h1>로그인에러당!!</h1>
					<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != NULL }">
						message : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message }"/>
					</c:if>
				</c:if>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					아이디 : <input type="text" name="j_username">
					비밀번호 : <input type="password" name="j_password">
				<input type="submit" value="로그인!">
			</form:form>
		</div>
	</div>
