<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="db"  scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="db1"  scope="page" class="xqwy.xqwy"/>


<%
 
String rec_id= new String(request.getParameter("rec_id").trim().getBytes("8859_1"));

String cwname= new String(request.getParameter("cwname").getBytes("8859_1"));
String ctype= new String(request.getParameter("ctype").getBytes("8859_1"));
String remark= new String(request.getParameter("remark").getBytes("8859_1"));
 

if(ctype.equals("1"))
{
	String ynum= new String(request.getParameter("ynum").getBytes("8859_1"));
	String carnum= new String(request.getParameter("carnum").getBytes("8859_1"));

			String sql1="select * from cw where cwname='"+cwname+"' and rec_id<>'"+rec_id+"'  ";

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
 
				String sql2="update cw set  cwname='"+cwname+"' ,ctype='"+ctype+"',ynum='"+ynum+"' ,carnum='"+carnum+"' ,remark='"+remark+"' where rec_id= '"+rec_id+"'";
					
					db.executeUpdate(sql2);

							String 	  h_wnumc=(String)session.getAttribute("admin");//��ȡ��ǰ�û��û���

							//������־
							db.executeUpdate("insert into system_rz (wnum,remark) values('"+h_wnumc+"','���ĳ�λ��ϢID:"+rec_id+"')");
							db.closeStmt();
							db.closeConn();
			}
}
else
{
			String sql1="select * from cw where cwname='"+cwname+"'  and rec_id<>'"+rec_id+"'   ";

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
 
				String sql2="update cw set  cwname='"+cwname+"' ,ctype='"+ctype+"' ,ynum=' ',carnum=' '  ,remark='"+remark+"' where rec_id= '"+rec_id+"'";
					
					db.executeUpdate(sql2);

							String 	  h_wnumc=(String)session.getAttribute("admin");//��ȡ��ǰ�û��û���

							//������־
							db.executeUpdate("insert into system_rz (wnum,remark) values('"+h_wnumc+"','���ĳ�λ��ϢID:"+rec_id+"')");
							db.closeStmt();
							db.closeConn();
			}
}



%>
 

<title>�ޱ����ĵ�</title>
</head>

<body bgcolor="#FFFFFF" text="#000000" onLoad="load2()">
<script language="JavaScript" type="text/JavaScript">
function load2() {
opener.setTimeout("submit01dfs()",15)
self.setTimeout("exit()",10)
}
function exit() {
window.close()
}
</script>

</body>
</html>



