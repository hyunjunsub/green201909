<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
난 insert이다

<form action="Insert" method="post">
	<table border="" width="100%">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"/></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="pname" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" name="content"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="list">뒤로</a>
				<input type="submit" value="작성" />
			</td>
		</tr>
	</table>
</form>