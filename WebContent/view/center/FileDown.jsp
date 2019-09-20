<%@page import="java.io.FileInputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getRealPath("up");
	path = "D:\\study\\jspWork\\mvcProj\\WebContent\\up";

	String ff = request.getParameter("file");
	
	FileInputStream fis = new FileInputStream(path+"\\"+ff);
	
	String fName = URLEncoder.encode(ff,"utf-8");
	response.setHeader("Content-Disposition", "attachment;filename="+fName);
	
	out.clear();
	out = pageContext.pushBody();
	
	ServletOutputStream sos = response.getOutputStream();
	
	byte [] buf = new byte[1024];
	
	while(fis.available()>0){
		int len = fis.read(buf);
		sos.write(buf,0,len);
	}
	
	sos.close();
	fis.close();

%>