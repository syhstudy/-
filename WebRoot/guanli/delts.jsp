<html>
<head>
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>

<jsp:useBean id="db"  scope="page"class="xqwy.xqwy"/>
<%
	String rec_id = request.getParameter("rec_id");
  

	String sql2= "delete liuyuan  where rec_id='"+rec_id+"'  ";
	 db.executeUpdate(sql2);
  			db.closeStmt();
			db.closeConn();
 			//������־
			String 	  yadmin=(String)session.getAttribute("admin");//�����û��û���

			db.executeUpdate("insert into system_rz (wnum,remark) values('"+yadmin+"','ɾ��Ͷ����ϢID:"+rec_id+"')");
			db.closeStmt();
			db.closeConn();
	   response.sendRedirect("m_ts.jsp");
 
%>
