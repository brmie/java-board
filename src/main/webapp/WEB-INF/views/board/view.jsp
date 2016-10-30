<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <div class="title-group">
		<h1>${board.title}<br>
		<small>${board.bno} / ${board.writer} / ${board.date}</small></h1>
	</div>
	
	<div class="contents">
		<p class="lead">
			${board.content}
		</p>
	</div>
	
	<div class="btns">
		<c:if test="${maxBno > board.bno }">
			<a href="/board/view/${board.bno + 1 }" class="btn btn-pupple btn-lg"><span class="glyphicon glyphicon-menu-left"></span></a>
		</c:if>
		<a href="/board/list" class="btn btn-pupple btn-lg"><span class="glyphicon glyphicon-th-large"></span> 목록으로</a>
		<a href="/board/delete/${board.bno }" class="btn btn-danger btn-lg"><span class="glyphicon glyphicon-fire"></span> 삭제</a>
		<c:if test="${minBno < board.bno }">
			<a href="/board/view/${board.bno - 1 }" class="btn btn-pupple btn-lg"><span class="glyphicon glyphicon-menu-right"></span></a>
		</c:if>
	</div>