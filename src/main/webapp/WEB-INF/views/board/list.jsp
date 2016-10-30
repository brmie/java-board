<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="board" items="${boards}">
	<div class="list-group col-xs-3">
	  <a href="/board/view/${board.bno}" class="list-group-item">
	    <h2 class="list-group-item-heading">${board.title}</h2>
	    <p class="list-group-item-text">${board.writer} / ${board.date}</p>
	  </a>
	</div>
</c:forEach>

<div class="clearfix"></div>

<div class="btns">
	<a href="/board/write" class="btn btn-pupple btn-lg" ><span class="glyphicon glyphicon-pencil"></span> 글쓸랭</a>	
</div>