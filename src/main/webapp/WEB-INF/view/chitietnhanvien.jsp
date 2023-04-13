<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
</head>
<body>
	<h1>Chi tiết nhân viên</h1>
	<table width="80%"  cellpadding="1" cellspacing="1">
		<tr>
			<td>Mã NV</td>
			<td>${employee.id}</td>
		</tr>
		<tr>
			<td>Họ tên</td>
			<td>${employee.name}</td>
		</tr>
		<tr>
			<td>Nam</td>
			<td><input type="checkbox" value="${employee.male}"></td>
		</tr>
		<tr>
			<td>Ngày sinh</td>
			<td>${employee.birthday}</td>
		</tr>
		<tr>
			<td>Địa chỉ</td>
			<td>${employee.address}</td>
		</tr>
		<tr>
			<td>SĐT</td>
			<td>${employee.phone}</td>
		</tr>
		<tr>
			<td>Phòng ban</td>
			<td>${employee.department}</td>
		</tr>
		<tr>
			<td>Chức vụ</td>
			<td>${employee.title}</td>
		</tr>
		<tr>
			<td>Lương căn bản</td>
			<td>${employee.wageRate}</td>
		</tr>
		
	</table>
	<a href="/employee/danhsachnhanvien">
		<input type="button" value="Danh sách nhân viên">
	</a>
	
	<input type="button" value="Sửa">
	
</body>
</html>