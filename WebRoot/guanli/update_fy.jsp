<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="db1"  scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="db2"  scope="page" class="xqwy.xqwy"/>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�޸ķ�����Ϣ</title>
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
<SCRIPT LANGUAGE="JavaScript">
<!--


 
	 function isValid() 
{
	if(document.form1.d.value=="")
	{
		alert("���������!");
		document.form1.d.focus();
		return false;
	}
	if(document.form1.s.value=="")
	{
		alert("������ˮ��!");
		document.form1.s.focus();
		return false;
	}
	if(document.form1.money.value=="")
	{
		alert("���������!");
		document.form1.money.focus();
		return false;
	}
	if(document.form1.wyf.value=="")
	{
		alert("��������ҵ��!");
		document.form1.money.focus();
		return false;
	}
}
 // -->
</SCRIPT>
</head>

<body>
<%
 String rec_id=new String(request.getParameter("rec_id").trim().getBytes("8859_1"));
 String	ynum	="";
String	l	="";
String	dd	="";
String	yname	="";
String	sex	="";
String	yue	="";
String	d	="";
String	ss	="";
String	wyf	="";
String	money	="";
String	wnum	="";
String mz="";
String sql2="select * from fy  where  rec_id='"+rec_id+"'";
int xingbei=0;
ResultSet rs4=db1.executeQuery(sql2);

if (rs4.next())
{
									ynum	=rs4.getString("ynum");
									yue	=rs4.getString("yue");
									d	=rs4.getString("d");
									ss	=rs4.getString("s");
									wyf	=rs4.getString("wyf");
									money	=rs4.getString("money");
								ResultSet rs6=db1.executeQuery("select * from yz where ynum='"+ynum+"' ");
								if(rs6.next())
								{
									l	=rs6.getString("l");
									dd	=rs6.getString("d");
									yname	=rs6.getString("yname");
									xingbei	=rs6.getInt("sex");

									mz	=rs6.getString("mz");

									if (xingbei==1)
									sex="��";
								else
									sex="Ů";

								}
								rs6.close();


%>			
 
              <table cellspacing="1" cellpadding="1" width="100%" align="center" 
            bgcolor="#8ccebd" border="0">
                <tbody>
                  <tr>
                    <td 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" 
                valign="top" bgcolor="#fffcf7">
				<!--0000000000000000000000000000000000000000000000000000000000000000000 -->
					<table width="100%"border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
						<form name="form1" action="update_fy1.jsp" method="post"  onsubmit="return isValid();" >
							<input type="hidden" name="rec_id" value=<%=rec_id%>>
 

					 
						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> <div align="right">ҵ��������Ϣ:</div></td>
							<td bgcolor="#FFFFFF" > 
							 <table width="100%"  border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd"  >
											<tr> 
											  <td width="80" align="center">��ţ�</td>
											  <td  bgcolor="#FFFFFF" ><FONT SIZE="2" COLOR="#0000CC"><%=ynum%></FONT> </td> 
											  <td width="80" align="center">ҵ��������</td>
											  <td  bgcolor="#FFFFFF" ><FONT SIZE="2" COLOR="#0000CC"><%=yname%></FONT> </td> 
											  <td  width="80"  align="center"><span class="STYLE1">�Ա� </td> 
											  <td  bgcolor="#FFFFFF" ><FONT SIZE="2" COLOR="#0000CC"><%=sex%></FONT> </td> 
											</tr>
											<tr> 
											  <td width="80" align="center">¥�ţ�</td>
											  <td  bgcolor="#FFFFFF" ><FONT SIZE="2" COLOR="#0000CC"><%=l%></FONT> </td> 
											  <td width="80" align="center">��Ԫ�ţ�</td>
											  <td  bgcolor="#FFFFFF" ><FONT SIZE="2" COLOR="#0000CC"><%=dd%></FONT> </td> 
											  <td  width="80"  align="center"><span class="STYLE1">����� </td> 
											  <td  bgcolor="#FFFFFF" ><FONT SIZE="2" COLOR="#0000CC"><%=mz%></FONT> </td> 
											</tr>
										  </table>
							  </td>
						  </tr>
						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> <div align="right">�����·�:</div></td>
							<td bgcolor="#FFFFFF" > 
							  <FONT SIZE="2" COLOR="#0000CC"><%=yue%></FONT>
							  </td>
						  </tr>
						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> <div align="right">�����õ���:</div></td>
							<td bgcolor="#FFFFFF" > 
							  <input type="text" name="d" maxlength="50" size="5" value="<%=d%>" class="input"  onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" >&nbsp;<FONT SIZE="2" COLOR="">��</FONT>
							  </td>
						  </tr>

						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> <div align="right">������ˮ��:</strong></div></td>
							<td bgcolor="#FFFFFF" > 
							  <input type="text" name="s" maxlength="50" size="5" value="<%=ss%>" class="input"  onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" >&nbsp;<FONT SIZE="2" COLOR="">��</FONT>
							  </td>
						  </tr>
						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> <div align="right">��ҵ��:</strong></div></td>
							<td bgcolor="#FFFFFF" > 
							  <input type="text" name="wyf" maxlength="50" size="5" value="<%=wyf%>" class="input"  onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" >&nbsp;<FONT SIZE="2" COLOR="">��</FONT>
							  </td>
						  </tr>
						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> <div align="right"><span class="STYLE10">����Ӧ�ɷ���:</span></strong></div></td>
							<td bgcolor="#FFFFFF" > 
							  <input type="text" name="money" maxlength="50" size="5" value="<%=money%>" class="input"  name="money" maxlength="10" size="10" value="" style="BACKGROUND-COLOR: #FFFF00; text-align: center; height:30px; COLOR: #FF0000;font-weight: bold;" >&nbsp;<FONT SIZE="2" COLOR="">Ԫ</FONT></span>
							  </td>
						  </tr>
 

						
						<tr>
						  <td  colspan=2 bgcolor="#FFFFFF" align="center"><input name="pri" type="Button" onclick="window.print()" value="�� ӡ" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit"  name="isok" value="��  ��" class="button">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input onclick="window.opener=null;window.close()" type="button" value="ȡ  ��"></td>
						 </tr>

						</form>
					 </table>
				<!--0000000000000000000000000000000000000000000000000000000000000000000 -->
				</td>
                  </tr>
                </tbody>
              </table>

<%
}
rs4.close();

%>
</body>
</html>




