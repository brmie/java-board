<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri ="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>boramkim tete</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
		integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<!-- Custom -->
	<link rel="stylesheet" href="/resources/css/default.css">
	
	
</head>
<body>
	<div id="header" class="col-xs-12 text-center">
		<tiles:insertAttribute name="header"/>
	</div>
	<div class="container-fluid">
		<div id="body" class="col-xs-12 text-center">
		 <tiles:insertAttribute name="body"/>
		</div>
	</div>
	<div id="footer" class="col-xs-12 text-center footer">
		<tiles:insertAttribute name="footer"/>
	</div>

</body>
</html>
