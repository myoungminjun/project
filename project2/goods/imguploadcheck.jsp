<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>  
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%

	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	String originalFile, uploadFile;
	try {
	int maxSize = 1024*1024*10;
	String saveDirectory = "D:\\mmj\\jsp\\web04project\\WebContent\\img";
    MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxSize, "utf-8"); //덮어쓰기

	originalFile = multi.getOriginalFileName("gimg");
	uploadFile = multi.getFilesystemName("gimg");

		if (uploadFile==null) {
		out.println("<p>해당 이미지가 업로드 되지 못했습니다..</p>");
	} else {
		out.println("<p>해당 이미지가 업로드 되었습니다.</p>");
		out.println("<a href='javascript:apply(\"" + uploadFile + "\")'>" + uploadFile + "[적용]</a>");
		out.println("<p>적용을 눌러야 업로드 하신 이미지를 사용할 수 있습니다.</p>");
	%>
	<script>
		function apply(id) {
			opener.document.frm.gimg.value =id;
			opener.document.frm.imgck.value = "yes";
			window.close();
		}
	</script>
	<%
	}
	}catch (Exception e) {
		System.out.println("파일 업로드가 실패되었습니다.");
		e.printStackTrace();
	} 
	%>