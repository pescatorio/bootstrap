<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<%@include file="../includes/header.jsp" %>


            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Update Page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table class="table table-striped table-bordered table-hover" >
                                <thead>
                                    <tr>
                                        <th>#번호</th>
                                        <th>제목</th>
                                        <th>작성자</th>
                                        <th>작성일</th>
                                        <th>수정일</th>
                                    </tr>
                                </thead>
                             </table>
                                <div class="row">
                                	<div class="col-lg-12">
                                		<h1 class='page-header'>Board update</h1>
                                	</div>
                                </div>
                                <div class="row">
                                	<div class="col-lg-12">
                                		<div class="panel panel-default">
                                			<div class="panel-heading">Board Update Page</div>
                                			<div class="panel-body">
                                			
                                			<form role="form" action="/board/update" method="post">
                                				<div class="form-group">
                                					<label>Bno</label>
                                					<input class = "form-control" name='bno' value='<c:out value="${board.bno}"/>'readonly="readonly">
                                				</div>
                                				<div class="form-group">
                                					<label>Title</label><input class="form-control" name='title' value='<c:out value="${board.title }"/>'>
                                				</div>
                                				<div class="form-group">
                                					<label>Text area</label><textarea class="form-control" rows="3" name='content' >${board.content}</textarea>
                                				</div>
                                				<div class="form-group">
                                					<label>writer</label><input class="form-control" name='writer' value='<c:out value="${board.writer}"/>' readonly="readonly">
                                				</div>
                                				<div class="form-group">
                                					<label>RegDate</label><input class="form-control" name='regDate' value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regdate}"/>' readonly="readonly">
                                				</div>
                                				<div class="form-group">
                                					<label>UpdateDate</label><input class="form-control" name='regDate' value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.UpdateDate}"/>' readonly="readonly">
                                				</div>
                                				<button type="submit" data-oper='update' class="btn btn-default">제출</button>
                                				<button type="submit" data-oper='delete' class="btn btn-danger">삭제</button>
                                				<button type="submit" data-oper='list' class="btn btn-info">List</button>
                                			</form>
                                			</div>
                                		</div>
                                	</div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
<%@include file="../includes/footer.jsp"%>