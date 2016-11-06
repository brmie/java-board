<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <table class="table" id="userList">
    	<tr>
    		<td>회원번호</td>
    		<td>이름</td>
    		<td>아이디</td>
    		<td>가입일자</td>
    		<td>권한</td>
    	</tr>
		<c:forEach var="user" items="${users}">
			<tr>
	    		<td>${user.uno }</td>
	    		<td>${user.username }</td>
	    		<td>${user.userid }</td>
	    		<td>${user.joindate }</td>
	    		<td>${user.authority }</td>
    		</tr>
		</c:forEach>    	
    </table>