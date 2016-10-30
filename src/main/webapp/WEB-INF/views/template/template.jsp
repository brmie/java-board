<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri ="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>boramkim tete</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
	<!-- For Angular 2 -->
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/systemjs/0.19.24/system.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/2.0.0-beta.0/angular2-polyfills.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/2.0.0-beta.0/Rx.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/2.0.0-beta.0/angular2.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/2.0.0-beta.0/http.min.js"></script>
	
	<script src="/resources/js/app.js"></script>bundle from webpack -->
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
		integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<!-- Custom -->
	<link rel="stylesheet" href="/resources/css/default.css">
	
	 <!-- Polyfill(s) for older browsers -->
    <script src="https://unpkg.com/core-js/client/shim.min.js"></script>

    <script src="https://unpkg.com/zone.js@0.6.25?main=browser"></script>
    <script src="https://unpkg.com/reflect-metadata@0.1.8"></script>
    <script src="https://unpkg.com/systemjs@0.19.39/dist/system.src.js"></script>

    <script src="/resources/js/app/systemjs.config.js"></script>
    <script>
      System.import('app').catch(function(err){ console.error(err); });
    </script>
		
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
