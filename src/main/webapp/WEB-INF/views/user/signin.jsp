<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <form class="form-horizontal" action="/user/signin" method="post">
    	<div class="form-group form-group-lg">
    		<label class="col-xs-2 control-label" for="username">이름</label>
	    	<input class="form-control" type="text" name="username">
    		<label class="col-xs-2 control-label" for="userid">아이디</label>
	    	<input class="form-control" type="text" name="userid">
    		<label class="col-xs-2 control-label" for="userpw">비밀번호</label>
	    	<input class="form-control" type="password" name="userpw">
    	</div>
    	<input class="btn btn-pupple btn-lg" type="submit" value="가입하깅">
    </form>