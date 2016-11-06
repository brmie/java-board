<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>로그인 </h1>

<form name="form" method="post" action="/loginProcess">
	<table>
	    <tr height="40px">
	        <td>사용자아이디</td>
	        <td><input type="text" name="id"></td>
	    </tr>
	    <tr height="40px">
	        <td>패스워드</td>
	        <td><input type="password" name="pw"></td>
	    </tr>
	</table>
	<table>
	    <tr>
	        <td align="center"><input type="submit" value="로그인"></td>
	        <td align="center"><input type="reset" value="리셋"></td>
	    </tr>
	</table>
</form>
