<html>
<head>
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>

<jsp:useBean id="db"  scope="page"class="xqwy.xqwy"/>
<%
	String rec_id = request.getParameter("rec_id");
  

	String sql2= "delete xqgg  where rec_id='"+rec_id+"'  ";
	 db.executeUpdate(sql2);
  			db.closeStmt();
			db.closeConn();
 			//������־
			String 	  yadmin=(String)session.getAttribute("admin");//���ȡ��ǰ�����û���

			db.executeUpdate("insert into system_rz (wnum,remark) values('"+yadmin+"','ɾ��С��������ϢID:"+rec_id+"')");
			db.closeStmt();
			db.closeConn();
	   response.sendRedirect("m_gg.jsp");
 
%>
