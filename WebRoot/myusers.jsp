<%@page contentType="text/html;charset=gb2312" import="java.sql.*,java.util.*"%>
<jsp:useBean id="db1"  scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="db2"  scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="db"  scope="page" class="xqwy.xqwy"/>

<%@ include file="top.jsp" %>
<!-- ===================================== -->

 <style type="text/css">
.bb{ FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #1e4e10; BORDER-BOTTOM: #cccccc 2px solid; BACKGROUND-COLOR: #FEA817; TEXT-DECORATION: none}
</style>

<style>
	.clr{
		clear:both;
	}
	#footerlogo{
		padding-top:14px;
	}
	#footerlogo a{
		float:left;
		padding:5px 3px 0;
		display:block;
		font-size:12px;
		text-align:center;
	}
	#footerlogo .item{
		float:left;
		border:1px solid #d2d2d2;
		font-size:12px;
		height:50px;
		line-height:20px;
		margin:6px;
		width:120px;
	}
	#footerlogo .item .i1{
		width:44px;
	}
	#footerlogo .item .i2{
		width:64px;
	}
	#footerlogo a{
		color:#515151;
	}
</style>

<SCRIPT language=javascript>function T(n){document.getElementById("ArticleCnt").style.fontSize=n+"px";}</SCRIPT>


<script>
	 function isValid() 
{
	 if(document.form1.yname.value=="")
	{
		alert("��������!");
		document.form1.yname.focus();
		return false;
	}
			if(document.form1.pawd0.value=="")
			{
				alert("���������룡");
				document.form1.pawd0.focus();
				return false;
			}
			if(document.form1.pawd0.value=="")
			{
					alert("������ȷ������");
					document.form1.pawd.focus();
					return false;
			}
 
					if(document.form1.pawd0.value!=document.form1.pawd.value)
					{
 						alert("������������룬��һ����");
						document.form1.pawd0.focus();
						return false;
					}
 	 if(document.form1.tel.value=="")
	{
		alert("����绰!");
		document.form1.tel.focus();
		return false;
	}
}
</script>


<!--  -->
<%
 
%>

<TABLE cellSpacing=1 cellPadding=0 width=976 align=center bgColor=#d0e2fd border=0>
  <TBODY>
  <TR>
 <TD vAlign=top align="left"   bgColor=#ffffff> 
����ǰλ�ã�<a href="index.jsp">��ҳ</a>�����û�����
<table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td   align="center" valign="top" style="font-size:15px"><table width="100%" border="0" cellspacing="0" cellpadding="2">
 
            </table>
  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
              <tr> 
                
            <td  id="ArticleCnt"align="left" valign="top" style="FONT-FAMILY: verdana,arial,helvetica,sans-serif;word-break:break-all;font-size:14px;LETTER-SPACING: 0px">&nbsp;
<table width="100%" border="0">

                <tr> 
                  <td width="100%"> 

<%
String actionss=request.getParameter("actions");
if(actionss.equals("edit"))
{
		String yname="",pawd="",tel="";

		//��ȡ�û���Ϣ
		ResultSet gvip=db.executeQuery("select * from yz where ynum='"+tynum+"' ");
		if(gvip.next())
		{
			pawd=gvip.getString("pawd");
			yname=gvip.getString("yname");
			tel=gvip.getString("tel");
 		}
		gvip.close();
%>
                           

                              <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#e1e1e1" align="center">
							   <form name=form1 method="post" action="myusers.jsp?actions=save" onsubmit="return isValid();">
                                <tr>
                                  <td height=15 align="center" colspan=2 bgcolor="#f1f1f1"><font color="">�޸���Ϣ</font> </td>
                                </tr>
                                <tr bgcolor="#FFFFFF">
                                  <td width=17% align=right>�û��ʺţ�</td>
                                  <td width=83% class=pad> 
                                      <font color=#0066CC><%=tynum%></font></td>
                                </tr>
								<tr bgcolor="#FFFFFF">
                                  <td width=17% align=right>�ա�������</td>
                                  <td width=83% class=pad><input class="wenbenkuang" name="yname" value="<%=yname%>"  type="text" id="username" maxLength="18">
                                      <font color=red>**</font></td>
                                </tr>
                                <tr bgcolor="#FFFFFF">
                                  <td width=17% align=right>�ܡ����룺</td>
                                  <td class=pad><input class="wenbenkuang" name="pawd0"   value="<%=pawd%>"   type="password" id="userpassword" maxLength="18">
                                      <font color=red>**</font></td>
                                </tr>
                                <tr bgcolor="#FFFFFF">
                                  <td width=17% align=right>ȷ�����룺</td>
                                  <td class=pad><input class="wenbenkuang" name="pawd"   value="<%=pawd%>"   type="password" id="userpassword1" maxLength="18">
                                      <font color=red>**</font></td>
                                <tr bgcolor="#FFFFFF">
                                  <td width=17% align=right>��ϵ�绰��</td>
                                  <td class=pad><input class="wenbenkuang" name="tel"  value="<%=tel%>"    maxlength="18" type="text" id="usertel">
                                      <font color=red>**</font> </td>
                                </tr>
                                </tr>
                                <tr bgcolor="#FFFFFF">
                                  <td width=17% align="right"></td>
                                  <td class=pad><input class="go-wenbenkuang"  type=submit name="submit" value=" �ύ��Ϣ ">
                                      <input class="go-wenbenkuang"   type=reset name="Clear" value=" ������д ">
                                  </td>
                                </tr>
								</form>
                              </table>
                            <%
} 
%>


<br>
<br>
 
						  
                    </td>
                </tr>

              </table>
              &nbsp;&nbsp;&nbsp; 
              <div class="maincontent hidep" id="list_03">
				<h3 class="special">&nbsp;</h3>
				</div>
				
				</td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
</TD>

</TR></TBODY></TABLE>
 
<!-- ====================================== -->
<%@ include file="foot.jsp"  %>
</body>
</html>


 <%
if(actionss.equals("save"))
{

 String pawd=request.getParameter("pawd");
String yname= new String(request.getParameter("yname").getBytes("8859_1"));
 
 String tel= new String(request.getParameter("tel").getBytes("8859_1"));
 
 
 		db2.executeUpdate("update yz set pawd='"+pawd+"',   yname='"+yname+"',   tel='"+tel+"'  where ynum='"+tynum+"'  ");
			db2.closeStmt();
			db2.closeConn();

								%>
						<script>
							 window.alert("���ϱ���ɹ���");
							 history.back();
						</script>
						<%
}  %>