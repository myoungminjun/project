<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.shop.model.*" %>
<%@ page import="com.shop.biz.*" %>  

<%
	SimpleDateFormat df = new SimpleDateFormat("YY-MM-dd HH:mm");

	int pageSize = 10; // 한 페이지에 출력할 레코드 수

	// 페이지 링크를 클릭한 번호 / 현재 페이지
	String pageNum = request.getParameter("pageNum");
	if (pageNum == null){ // 클릭한게 없으면 1번 페이지
		pageNum = "1";
	}
	// 연산을 하기 위한 pageNum 형변환 / 현재 페이지
	int currentPage = Integer.parseInt(pageNum);

	// 해당 페이지에서 시작할 레코드 / 마지막 레코드
	int startRow = (currentPage - 1) * pageSize + 1;
	int endRow = currentPage * pageSize;

	int count = 0;
	InformDAO2 manager = new InformDAO2();
	
	count = manager.getCount(); // 데이터베이스에 저장된 총 갯수

	List<InformVO> list = null;
	if (count > 0) {
		// getList()메서드 호출 / 해당 레코드 반환
		list = manager.getList(startRow, endRow);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="./img/favicon.ico">
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/p_common.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="shortcut icon" href="./img/favicon.ico">
<style>
.title{text-align: center; padding-top:15px;}
.container{background-color: }
.table{ width: 50%;  border-collapse: collapse; margin-left: 510px;}
.tit{ padding: 10px; font-weight: 900; text-align: center; }
.cont{ padding: 10px; text-align: center; }
</style>
<title>S&M 공지사항</title>
</head>
<body>
 <%@include file="../header.jsp" %>
<ul>
<li><img src="./img/inform_banner.jpg" alt="" class="vs_img">
</ul>
	<div class="container">
		<h2 class="title">공지사항</h2>
<hr>
		  <table class="table">
		  <tbody>
			<tr>
				<td class="tit" width="10%">번호</td>
				<td class="tit" width="15%">이름</td>
				<td	class="tit" width="30%">제목</td>
				<td	class="tit" width="20%">작성일 </td>
				<td	class="tit" width="10%">조회수</td>
				
			</tr>

			<%
				if (count > 0) { // 데이터베이스에 데이터가 있으면
					int number = count - (currentPage - 1) * pageSize; // 글 번호 순번 
					for (int i = 0; i < list.size(); i++) {
						InformVO inform = list.get(i); // 반환된 list에 담긴 참조값 할당
			%>
			<tr>
				<td class="cont"><%=number--%></td>
				<td	class="cont"><%=inform.getInname() %></td>
				<td	class="cont">
					<%-- 제목을 클릭하면 get 방식으로 해당 항목의 no값과 pageNum을 갖고 content.jsp로 이동 --%> 
				<a href="GetInformCtrl2?idx=<%=inform.getIdx()%>&pageNum=<%=currentPage%>"><%=inform.getIntit()%></a>
				</td>
				<td	class="cont"><%=df.format(inform.getRdate())%></td>
				<td	class="cont"><%=inform.getVisited() %></td>

			</tr>
			<%
					 }
				}else{//데이터가 없으면
			%>
			<tr>
				<td colspan="6" align="center">게시글이 없습니다.</td>
			</tr>
			<%
					}
				%>
			<tr>
				<td colspan="6" align="center">
					<%	// 페이징  처리
						if(count > 0){
							// 총 페이지의 수
							int pageCount = count / pageSize + (count%pageSize == 0 ? 0 : 1);
							// 한 페이지에 보여줄 페이지 블럭(링크) 수
							int pageBlock = 10;
							// 한 페이지에 보여줄 시작 및 끝 번호(예 : 1, 2, 3 ~ 10 / 11, 12, 13 ~ 20)
							int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
							int endPage = startPage + pageBlock - 1;
							
							// 마지막 페이지가 총 페이지 수 보다 크면 endPage를 pageCount로 할당
							if(endPage > pageCount){
								endPage = pageCount;
							}
							
							if(startPage > pageBlock){ // 페이지 블록수보다 startPage가 클경우 이전 링크 생성
					%>
								<a href="GetInformListCtrl2?pageNum=<%=startPage - 10%>">[이전]</a>	
					<%			
							}
							
							for(int i=startPage; i <= endPage; i++){ // 페이지 블록 번호
								if(i == currentPage){ // 현재 페이지에는 링크를 설정하지 않음
					%>
									[<%=i %>]
					<%									
								}else{ // 현재 페이지가 아닌 경우 링크 설정
					%>
									<a href="GetInformListCtrl2?pageNum=<%=i%>">[<%=i %>]</a>
					<%	
								}
							} // for end
							
							if(endPage < pageCount){ // 현재 블록의 마지막 페이지보다 페이지 전체 블록수가 클경우 다음 링크 생성
					%>
								<a href="GetInformListCtrl2?pageNum=<%=startPage + 10 %>">[다음]</a>
					<%	
							}
						}
					%>
				</td>
			</tr>
		</tbody>	
		</table>
	</div>
</body>
</html>