<%@page contentType="text/html;charset=gb2312" import="java.sql.*,java.util.*"%>
<jsp:useBean id="db1"  scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="db2"  scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="db"  scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="db3"  scope="page" class="xqwy.xqwy"/>

<%@ include file="top.jsp" %>
<!-- ===================================== -->
<!-- ===================================== -->
<SCRIPT LANGUAGE="JavaScript">
<!--


function isValid()
{
 
	 if(document.lid.namess.value=="")
	{
	window.alert("������Ͷ���� ��");
	document.lid.namess.focus();
	return false;
	} 

	 if(document.lid.content.value=="")
	{
	window.alert("������Ͷ�����ݣ�");
	document.lid.content.focus();
	return false;
	} 
}

//-->
</SCRIPT>

<!--  -->
<TABLE cellSpacing=1 cellPadding=0 width=976 align=center bgColor=#d0e2fd border=0>
  <TBODY>
  <TR>
 <TD vAlign=top align="left"   bgColor=#ffffff> 
����ǰλ�ã�<a href="index.jsp">��ҳ</a>����Ͷ����

			  <table border="1"  bordercolor="#cccccc" width="100%" bgcolor="#FFFFFF"  cellpadding="5" cellspacing="0">
				<%
						    String sqlquery2="select * from liuyuan  order by addtime  desc ";
							ResultSet rs2=db3.executeQuery(sqlquery2);
							String cons="";
							String addtime="";
							String nas="";
							int ss0=0;
							String answers="";
							String answertime="";
							int ans=0;
							String anys="";
							while(rs2.next())
							{
								ss0++;
								nas=rs2.getString("name");
								cons=rs2.getString("liuyuan");
								addtime=rs2.getString("addtime");
								 ans=0;
								ans=rs2.getInt("ans");
								 answers= rs2.getString("answers");
								 answertime= rs2.getString("answertime");
								 anys= rs2.getString("anys");

									String tname="";
									ResultSet rs21=db1.executeQuery("select   * from admins where wnum='"+anys+"'" );
									if(rs21.next())
									{
										tname=rs21.getString("tname");
									}rs21.close();
							%>

                <tr bgcolor="#f4fbfc" background="images/dl_lbox_bg.gif"> 
                  <td colspan="2" align="left"><font size="2">��<%=ss0%>¥ &nbsp;&nbsp;&nbsp;<%=nas%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ͷ��ʱ�� <%=addtime.substring(0,19)%></font></td>
                </tr>
                <tr> 
                  <td colspan="2"  align="left" height="90" valign="top">&nbsp;&nbsp;<FONT SIZE="2" COLOR="#000000"><%=cons%></FONT>

				  <%
					if(ans==1)
					{%>
						  <br>
						  <br>
						  <div align="rigth" >
						                
						  <U>�ظ���<font   size="2"  color="#FF0000"><B><%=answers%></B></font>&nbsp;&nbsp;<FONT SIZE="2" COLOR="#FF0000">�ڣ�<%=answertime.substring(0,19)%>���ظ���<%=anys%>(<%=tname%>)</FONT></U></div>

					<%
						;
					} 	%>

				  <br><br>
				  </td>
                </tr>	<%
							}  rs2.close(); 
				  
				  
		String yname="";

		//��ȡ�û���Ϣ
		ResultSet gvip=db3.executeQuery("select * from yz where ynum='"+tynum+"' ");
		if(gvip.next())
		{
			yname=gvip.getString("yname");
 		}
		gvip.close();

		String anu="";
		if(tynum.equals(""))
			anu=" value='���ȵ�¼' disabled ";
		else
			anu=" ";
				  %>
				<tr>
				  <td colspan="2"  align="left">
				  <CENTER><font size="2">���� <FONT   COLOR="red"><B><%=ss0%></B></FONT>  ����¼ </font></CENTER>
						<form name="lid" action="o_liuyuan.jsp"  method="post"  onSubmit="return isValid();">
								<p><font size="2">Ͷ����</font>�� 
							  <input name="namess" type="text" maxlength="200" size="10" value="<%=yname%>">&nbsp;&nbsp;<FONT SIZE="" COLOR="red">*</FONT>
							  <br><br>

							Ͷ������:<br>
							  <TEXTAREA name="content" cols="90" rows="6"   ></TEXTAREA>&nbsp;&nbsp;<INPUT id=Submit type=submit height=25 width=100  <%=anu%> value="�ύ��Ϣ" name=Submit>
 
								</font>
						</form>
                    </p></td>
              </table>

</TD>

</TR></TBODY></TABLE>
 
<!-- ====================================== -->
<%@ include file="foot.jsp"  %>
 