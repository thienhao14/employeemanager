<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Add</title>
</head>
<body>
	<h1>Thêm nhân viên</h1>
	<table width="80%" cellpadding="1" cellspacing="1">
		<tr>
			<td>Mã NV</td>
			<td>
				<input type="text">
			</td>
		</tr>
		<tr>
			<td>Họ tên</td>
			<td>
				<input type="text">
			</td>
		</tr>
		<tr>
			<td>Nam</td>
			<td><input type="checkbox"></td>
		</tr>
		<tr>
			<td>Ngày sinh</td>
			<td>
				<input type="text">
			</td>
		</tr>
		<tr>
			<td>Địa chỉ</td>
			<td>
				<input type="text">
			</td>
		</tr>
		<tr>
			<td>SĐT</td>
			<td>
				<input type="text">
			</td>
		</tr>
		<tr>
			<td>Phòng ban</td>
			<td>
				<input type="text">
			</td>
		</tr>
		<tr>
			<td>Chức vụ</td>
			<td>
				<input type="text">
			</td>
		</tr>
		<tr>
			<td>Lương căn bản</td>
			<td>
				<input type="text">
			</td>
		</tr>
	</table>
	<input type="submit" value="Lưu">
	<a href="/employee/danhsachnhanvien">
	<input type="button" value="Hủy bỏ">
	</a>
	
</body>
</html>