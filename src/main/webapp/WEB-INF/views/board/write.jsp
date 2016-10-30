<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<form class="form-horizontal" method="post" action="/board/write" name="board">
		
		<div class="form-group form-group-lg">
			<label class="col-xs-2 control-label" for="title">제목</label>
			<div class="col-xs-8">
				<input class="form-control" type="text" name="title">
			</div>
		</div>

		<div class="form-group form-group-lg">
			<label class="col-sm-2 control-label" for="writer">작성자</label>
			<div class="col-xs-8">
				<input class="form-control" type="text" name="writer">
			</div>
		</div>
		
		<div class="form-group form-group-lg">
			<label class="col-sm-2 control-label" for="writer">본문</label>
			<div class="col-xs-8">
				<textarea class="form-control col-xs-12" rows="12"name="content"></textarea>
			</div>
		</div>
		<input class="btn btn-pupple btn-lg" type="submit" value="올려라!!">
	</form>
	
	<div class="btns">
		<a href="/board/list" class="btn btn-pupple btn-lg"><span class="glyphicon glyphicon-th-large"></span> 목록으로</a>
	</div>
