<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Employees</title>
</head>
<body>
	<h1>Danh sách nhân viên</h1>
	<h3>Tổng số nhân viên: ${listEmployees.size()}</h3>
	<a href="/employee/themnhanvien">
		<input type="button" value="Thêm nhân viên">
	</a>
	
	<input type="button" value="Xóa">

	<table width="80%" border="1" cellpadding="1" cellspacing="1">
		<thead>
			<td>Sửa</td>
			<td>Chọn</td>
			<td>Mã nhân viên</td>
			<td>Họ tên</td>
			<td>Ngày sinh</td>
		</thead>
		 <c:forEach items="${listEmployees}" var="employee">
		<tr>
			<td><a href="/employee/edit/${employee.id}"><input type="button" value="Sửa"></a>
			</td>
			<td><input type="checkbox"></td>
			<td><a href="/employee/${employee.id}">${employee.id}</a></td>
			<td>${employee.name}</td>
			<td>${employee.birthday}</td>
		</tr>
		</c:forEach>
	</table>
	

</body>
</html>