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

String cwname= new String(request.getParameter("cwname").getBytes("8859_1"));
String ctype= new String(request.getParameter("ctype").getBytes("8859_1"));
String remark= new String(request.getParameter("remark").getBytes("8859_1"));
 
if(ctype.equals("1"))
{
	String ynum= new String(request.getParameter("ynum").getBytes("8859_1"));
	String carnum= new String(request.getParameter("carnum").getBytes("8859_1"));

			String sql1="select * from cw where cwname='"+cwname+"'   ";

			ResultSet rs1=db1.executeQuery(sql1);

			if(rs1.next())
			{
			 rs1.close();
			%>
			<SCRIPT LANGUAGE="JavaScript">

			alert("�� ��λ�� �Ѵ���!");
			window.setInterval("submit01()",20000)
			history.back();

			</SCRIPT><%
			}else
			{
				rs1.close();
			String sql2="insert into cw(cwname,ctype,ynum,carnum,remark )values('"+cwname+"' , '"+ctype+"', '"+ynum+"','"+carnum+"','"+remark+"' )";

			db2.executeUpdate(sql2);
			 
						String 	  h_wnumc=(String)session.getAttribute("admin");//��ȡ��ǰ�û��û���

						//������־
						db2.executeUpdate("insert into system_rz (wnum,remark) values('"+h_wnumc+"','��ӳ�λ:"+cwname+"')");
						db2.closeStmt();
						db2.closeConn();
			}
}
else
{
			String sql1="select * from cw where cwname='"+cwname+"'   ";
 
			ResultSet rs1=db1.executeQuery(sql1);

			if(rs1.next())
			{
			 rs1.close();
			 System.out.println("������!");

			%>
			<SCRIPT LANGUAGE="JavaScript">

			alert("�� ��λ�� �Ѵ���!");
			window.setInterval("submit01()",20000)
			history.back();

			</SCRIPT><%
			}else
			{
				rs1.close();
			String sql2="insert into cw(cwname,ctype,ynum,carnum,remark )values('"+cwname+"' , '"+ctype+"', ' ',' ','"+remark+"' )"; 
			db2.executeUpdate(sql2);

						String 	  h_wnumc=(String)session.getAttribute("admin");//��ȡ��ǰ�û��û���
 
						//������־
						db2.executeUpdate("insert into system_rz (wnum,remark) values('"+h_wnumc+"','��ӳ�λ:"+cwname+"')");
						db2.closeStmt();
						db2.closeConn();
			}

}
%>
 
 						<script>
							 window.alert("��Ϣ��ӳɹ�! ");
							self.setTimeout("exit()",1)
							function exit() 
							{
								document.addgo.action="ad_cw.jsp";
								document.addgo.submit();
							}
						</script> 

				<form action="ad_cw.jsp" method="post" name="addgo">

				</form> &nbsp;


