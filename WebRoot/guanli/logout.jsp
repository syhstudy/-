<html>
<head>
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%

 
%>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="db" scope="page" class="xqwy.xqwy"/>

<title>�ޱ����ĵ�</title>
</head>
<body>
<%

 			//������־
			String 	  yadmin=(String)session.getAttribute("admin");//��ȡ��ǰ�û��û���

			db.executeUpdate("insert into system_rz (wnum,remark) values('"+yadmin+"','�˳�ϵͳ')");
			db.closeStmt();
			db.closeConn();
		request.getSession().invalidate();
		response.sendRedirect("index.jsp");
%>

</body>
</html>
