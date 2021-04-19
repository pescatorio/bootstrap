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
                            Board List Page
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
                                		<h1 class='page-header'>Board Read</h1>
                                	</div>
                                </div>
                                <div class="row">
                                	<div class="col-lg-12">
                                		<div class="panel panel-default">
                                			<div class="panel-heading">Board Read Page</div>
                                			<div class="panel-body">
                                				<div class="form-group">
                                					<label>Bno</label>
                                					<input class = "form-control" name='bno' value=${board.bno} readonly="readonly">
                                				</div>
                                				<div class="form-group">
                                					<label>Title</label><input class="form-control" name='title' value=${board.title } readonly="readonly">
                                				</div>
                                				<div class="form-group">
                                					<label>Text area</label><textarea class="form-control" rows="3" name='content' readonly="readonly">${board.content}</textarea>
                                				</div>
                                				<div class="form-group">
                                					<label>writer</label><input class="form-control" name='writer' value='${board.writer}' readonly="readonly">
                                				</div>
                                				<button data-oper='update' class="btn btn-default" onclick="location.href='/board/update_b?bno=${board.bno}'">수정하기</button>
                                				<button data-oper='list' class="btn btn-info"onclick = "location.href='/board/list_b'">List</button>
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