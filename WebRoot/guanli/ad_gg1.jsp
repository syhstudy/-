 <%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>

<jsp:useBean id="db2"  scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="db1"  scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="db"  scope="page" class="xqwy.xqwy"/>
<link rel="stylesheet" type="text/css" href="images/Style.css">
<style type="text/css">
<!--
.STYLE1 {
	color: #0000FF;
	font-weight: bold;
}
.STYLE2 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>


<%@  include file="top.jsp" %>


<%
 String	gtitle	= new String(request.getParameter("gtitle").getBytes("8859_1"));
String	ggcontent	= new String(request.getParameter("ggcontent").getBytes("8859_1"));
  
 
String sql1="select * from xqgg where gtitle='"+gtitle+"'";

ResultSet rs1=db.executeQuery(sql1);

if(rs1.next())
{
 rs1.close();
%>
<SCRIPT LANGUAGE="JavaScript">

alert("�� С�����湫�����  �Ѵ���!");
window.setInterval("submit01()",20000)
history.back();

</SCRIPT><%
}else
{


	rs1.close();
	//��session���ȡС�����������
	String sql2="insert into xqgg(gtitle,ggcontent )values('"+gtitle+"','"+ggcontent+"' )";

		db2.executeUpdate(sql2);
		db2.closeStmt();
		db2.closeConn();

 			//������־
			String 	  yadmin=(String)session.getAttribute("admin");//��ȡ��ǰ�����û���
			db1.executeUpdate("insert into system_rz (wnum,remark) values('"+yadmin+"','���С������ ')");
			db1.closeStmt();
			db1.closeConn();
}
%>
 
 						<script>
							 window.alert("��Ϣ��ӳɹ�! ");
							self.setTimeout("exit()",1)
							function exit() 
							{
								document.addgo.action="ad_gg.jsp";
								document.addgo.submit();
							}
						</script> 

				<form action="ad_gg.jsp" method="post" name="addgo">

				</form> &nbsp;


