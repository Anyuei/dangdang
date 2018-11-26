<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<!-- 将地址栏的 类名传给Struts2的值栈 -->
<% String category= request.getParameter("category");
	request.setAttribute("category",category);
%>
    <body>
    	<s:iterator value="#request.categories">
    				<div>
    					<s:property value="categoryName"/>
    				</div>
					<hr>
					<div class="row">
					<s:iterator value="child_categories">
    					<div class="col-lg-6">
    					
    						<s:if test="categoryName==#request.category">
    							<a href='${pageContext.request.contextPath}/jsp/sort.jsp?category=<s:property value="categoryName"/>&categoryBookPage=1&father_categorieID=<s:property value="father_categorieID"/>'>
    							<font style="color:#ff3600"><s:property value="categoryName"/></font>
    							</a>
    						</s:if>
    						<s:else>
    						
    							<a href='${pageContext.request.contextPath}/jsp/sort.jsp?category=<s:property value="categoryName"/>&categoryBookPage=1&father_categorieID=<s:property value="father_categorieID"/>'>
    							<font><s:property value="categoryName"/></font>
    							</a>
    						</s:else>
    					</div>
    				</s:iterator>
					</div>
    		<hr>
    	</s:iterator>
 	</body>
</html>