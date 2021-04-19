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
                                <tbody>
	                                <c:forEach items="${list}" var="board">
	                                <tr class="odd gradeX">
		                          		<td>${board.bno}</td>
			                          	<td><a href='/board/get_b?bno=${board.bno}'>${board.title}</a></td>
			                          	<td>${board.writer}</td>
			                          	<td>${board.regdate}</td>
			                          	<td class="center">${board.updateDate}</td>
		                          	</tr>
		                          </c:forEach>
                          		</tbody>
                            </table>
                            <div class='pull-right'>
                            	<ul class="pagination">
		                            <c:if test = "${pageNavi.prev }"> <li class="paginate_button"><a href="#"> 이전 </a></li></c:if>
		                            <c:forEach begin="${pageNavi.startPage}" end="${pageNavi.endPage}">
		                            	<li class="paginate_button"><a href="#">${num}</a></li>
		                            </c:forEach>
		                            <c:if test = "${pageNavi.next }"> <li class="paginate_button"><a href="#"> 이후 </a></li> </c:if>
		                         </ul>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
<%@include file="../includes/footer.jsp" %>