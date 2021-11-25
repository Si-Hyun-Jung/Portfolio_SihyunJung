<%@page import="java.io.PrintWriter"%>
<%@page import="user.UserDAO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="name" />
<jsp:setProperty name="user" property="number" />
<jsp:setProperty name="user" property="email" />
<jsp:setProperty name="user" property="content" />
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title> </title>
</head>

<body>
    <% //-------------------------입력이 안된 사항이 있을 경우 경고-------------------------
		if(user.getName() == null || user.getNumber() == null || user.getEmail() == null || user.getContent() == null ){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다')");
			script.println("history.back()");
			script.println("</script>");
		}else{//-------------------------모두 입력이 되었을 시, 데이터베이스로 정보 이동-------------------------
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user);
				PrintWriter script = response.getWriter();
				System.out.println("넘어온값============"+ user.getName());
				System.out.println("넘어온값============"+ user.getNumber());
				System.out.println("넘어온값============"+ user.getEmail());
				System.out.println("넘어온값============"+ user.getContent());
				script.println("<script>");
				script.println("alert('완료되었습니다!')");
				script.println("location.href='Main.jsp'");
				script.println("</script>");
		}
	%>
</body>

</html>
