<%@page contentType="text/html;charset=gb2312" import="java.sql.*,java.util.*"%>
<jsp:useBean id="head"  scope="page" class="xqwy.xqwy"/>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%@ include file="webtitle.jsp"%></title>
<meta name="keywords" content="С����ҵ����ϵͳ">
<meta name="description" content="С����ҵ����ϵͳ">
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/js.js"></script>
<script type="text/javascript" src="a2j/astr.js"></script>
</head>

<body>
		 <% 

String tynum="";
if(session.getAttribute("tynum")==null)
	tynum="";
else
	tynum=(String)session.getAttribute("tynum");
			if (tynum.equals(""))
			{	%>
		 <TABLE cellSpacing=0 cellPadding=5 width="976" align=center background=images/newdenglu_900.gif border=0>
				  <TBODY>
			<FORM name=loginfo action=chkuser.jsp method=post>
			<tr>
			<td>��ӭ��¼��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	

				
						ҵ����ţ�<font size="2"><INPUT id=anonymous style="FONT-SIZE: 9pt" 
                        size=12 name="zhm">&nbsp;&nbsp;���룺<INPUT id=password  style="FONT-SIZE: 9pt" type=password size=12 
                        name="mm"><font size="2">&nbsp;<INPUT  type="submit" name="submit" value=��¼>
                        <font size="2"><A href="a.jsp" >[ϵͳʹ��˵��]</A> 
			</td>
			
			<td  align="right>
				<a href="#" onclick="window.external.AddFavorite(document.URL,document.title);">�����ղ�</a>&nbsp;&nbsp;<a href="#" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage(document.URL);">��Ϊ��ҳ</a> 
			</td>
		</tr>
</form>
<table>
								<% ;

			}else
			{	%>

		 <TABLE cellSpacing=0 cellPadding=5 width="976" align=center background=images/newdenglu_900.gif border=0>
				  <TBODY>
					<tr>
					<td>
					<font size="2">&nbsp;&nbsp;��ӭ��ҵ��<FONT color=green><B><%=tynum%></B></FONT>&nbsp;&nbsp;���á�</font> 
              <font size="2"><A href="myusers.jsp?actions=edit" >[��������]</A> 
			   <font size="2"><A href="bx1.jsp" >[��Ҫ����]</A> 
			   <font size="2"><A href="listbx.jsp" >[�ҵı�����Ϣ]</A> 
			   <font size="2"><A href="a.jsp" >[ϵͳʹ��˵��]</A> 
              <font size="2"><A href="logout.jsp" >[�ˡ���]</A></font></TD>
 			       <td align="right">
				   <a href="#" onclick="window.external.AddFavorite(document.URL,document.title);">�����ղ�</a>&nbsp;&nbsp;<a href="#" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage(document.URL);">��Ϊ��ҳ</a>			
				  </td>
				</tr>
		</table> <%
		}
%>
<TABLE cellSpacing=0 cellPadding=0 width=976 align=center border=0>
  <TBODY>
  <TR>
    <TD width=771 bgColor=#3ab3c5 height=9></TD></TR>
  <TR>
    <TD height=14>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width=976 bgColor=#ffffff height=60><a href="index.jsp" ><IMG 
          src="images/htc.gif" BORDER="0" width=976 height=200></a></TD>
			</TR></TBODY></TABLE></TD></TR></TBODY></TABLE>

<TABLE cellSpacing=0 cellPadding=0 width=976 align=center border=0>
  <TBODY>
  <TR >
	<TD  background=images/new_banner.gif height=32  align="center">
		<a href="index.jsp" style="color:#FF0000"><B>С������</B></a>
	</TD>
	<TD  background=images/new_banner.gif height=32  align="center">
		<a href="aqxx.jsp" style="color:#FF0000"><B>С����ȫ��Ϣ����</B></a>
	</TD>
	<TD  background=images/new_banner.gif height=32  align="center">
		<a href="liuyuan.jsp" style="color:#FF0000"><B>Ͷ����</B></a>
	</TD>
  </TR>
  </TBODY>
</TABLE>


<!-- ddd -->
