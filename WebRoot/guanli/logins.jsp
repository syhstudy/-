<%@page contentType="text/html;charset=gb2312" import="java.sql.*,java.util.*"%>
<jsp:useBean id="db2" scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="db" scope="page" class="xqwy.xqwy"/>

 <%
///��������֤
	String username=new String(request.getParameter("admin_name").trim());
	String userpas=new String(request.getParameter("admin_pass").trim());

	ResultSet rs2=db2.executeQuery("select * from admins where wnum='"+username+"' and wpswd = '"+userpas+"'");

if(rs2.next())
{
	rs2.close();
				session.setAttribute("admin",username);
 			//������־
			db.executeUpdate("insert into system_rz (wnum,remark) values('"+username+"','��¼ϵͳ')");
			db.closeStmt();
			db.closeConn();
					response.sendRedirect("manage.jsp");
}else
{
	rs2.close();
	%>
			<script>
				 window.alert("�û��������������!");
				 history.back();
			</script>
	<%		
}
 %>