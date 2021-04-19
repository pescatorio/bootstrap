<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<%@include file="../includes/header.jsp" %>

                            <div class='pull-right'>
                            	<ul class="pagination">
		                            <c:if test = "${pageNavi.prev }"> <li class="paginate_button"><a href="#"> 이전 </a></li></c:if>
		                            
		                            <c:forEach begin="${pageNavi.startPage}" end="${pageNavi.endPage}">
		                            	<li class="paginate_button"><a href="#">${num}</a></li>
		                            </c:forEach>
		                            <c:if test = "${pageNavi.next }"> <li class="paginate_button"><a href="#"> 이후 </a></li> </c:if>
		                         </ul>
                            </div>
<%@include file="../includes/footer.jsp" %>