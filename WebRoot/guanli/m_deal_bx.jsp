<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="db2"  scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="db1"  scope="page" class="xqwy.xqwy"/>

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��̨����ϵͳ</title>
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
<script>
 
 
function deal(a)
{
	c="dealbx.jsp?rec_id="+a;
  	window.open(c,'vssd2','height=500,width=740,top='+(screen.availHeight-500)/2+',left='+(screen.availWidth-740)/2+',toolbar=no,status=no,scrollbars=yes,menubar=no,location=no');

}

 function subaggmit01()
{
	self.location.replace("m_deal_bx.jsp")
}
 


 </script>

</head>

<body>
<%@  include file="top.jsp" %>



<%


String qynum = null;
if (request.getParameter("qynum") != null) {
	qynum= new String(request.getParameter("qynum").trim().getBytes("8859_1"));

}
 
if(qynum==null)	
	{ 
		qynum=(String)session.getValue("qynum");
	}
String qsbmc = null;
if (request.getParameter("qsbmc") != null) {
	qsbmc= new String(request.getParameter("qsbmc").trim().getBytes("8859_1"));

}
 
if(qsbmc==null)	
	{ 
		qsbmc=(String)session.getValue("qsbmc");
	}
String qwtms = null;
if (request.getParameter("qwtms") != null) {
	qwtms= new String(request.getParameter("qwtms").trim().getBytes("8859_1"));

}
 
if(qwtms==null)	
	{ 
		qwtms=(String)session.getValue("qwtms");
	}

if(qynum==null  || 	qsbmc==null ||  qwtms==null )
{
	qynum="";
	qsbmc="";
	qwtms="";
  
}

 session.putValue("qynum",qynum);
 session.putValue("qsbmc",qsbmc);
 session.putValue("qwtms",qwtms);
 

int pageLine=10;
int totalRec=0;
int intPage=1;
int i;
if (request.getParameter("page")!=null)
intPage=Integer.parseInt(request.getParameter("page"));
try{
ResultSet countrs=null;
countrs=db1.executeQuery("select count(*)as cnt from bxxx where zt=0 and   ynum like '"+"%"+qynum+"%"+"' and     sbmc like '"+"%"+qsbmc+"%"+"'  and    wtms like '"+"%"+qwtms+"%"+"'  ");

if(countrs.next())
totalRec=countrs.getInt("cnt");
countrs.close();
}
catch(Exception e){
e.printStackTrace();
}
int intPageCount=0;
intPageCount=(totalRec+pageLine-1)/pageLine;


String sql2="select top "+pageLine+" * from  bxxx where  zt=0 and    ynum like '"+"%"+qynum+"%"+"' and     sbmc like '"+"%"+qsbmc+"%"+"'  and    wtms like '"+"%"+qwtms+"%"+"'  and  rec_id not in (select top "+((intPage-1)*pageLine)+" rec_id from bxxx where  zt=0 and   ynum like '"+"%"+qynum+"%"+"' and     sbmc like '"+"%"+qsbmc+"%"+"'  and    wtms like '"+"%"+qwtms+"%"+"'   order by    rec_id desc  )  order by   rec_id desc ";

ResultSet rs2=db2.executeQuery(sql2);

String	tqsnum	="";
String	sbmc	="";
String	wtms	="";
String	szts="";
int zt=0; 
String addtime="";
int s=0,rec_id=0;

 
%>

<br />
<table cellspacing="0" cellpadding="0" width="98%" align="center" border="0">
  <tbody>
    <tr>
      <td style="PADDING-LEFT: 2px; HEIGHT: 22px" 
    background="images/tab_top_bg.gif"><table cellspacing="0" cellpadding="0" width="477" border="0">
        <tbody>
          <tr>
            <td width="147"><table height="22" cellspacing="0" cellpadding="0" border="0">
              <tbody>
                <tr>
                  <td width="3"><img id="tabImgLeft__0" height="22" 
                  src="images/tab_active_left.gif" width="3" /></td>
                  <td 
                background="images/tab_active_bg.gif" class="tab"><strong>������</strong></td>
                  <td width="3"><img id="tabImgRight__0" height="22" 
                  src="images/tab_active_right.gif" 
            width="3" /></td>
                </tr>
              </tbody>
            </table></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr>
      <td bgcolor="#ffffff"><table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
          <tr>
            <td width="1" background="images/tab_bg.gif"><img height="1" 
            src="images/tab_bg.gif" width="1" /></td>
            <td width="100%" 
          valign="top" 
          style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px"><div id="tabContent__0" style="DISPLAY: block; VISIBILITY: visible">
              <table cellspacing="1" cellpadding="1" width="100%" align="center" 
            bgcolor="#8ccebd" border="0">
                <tbody>
                  <tr>
                    <td 
                style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" 
                valign="top" bgcolor="#fffcf7">
				<!--0000000000000000000000000000000000000000000000000000000000000000000 -->

					<table width="100%"border="0" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
						<form name="form1" action="m_deal_bx.jsp" method="post"  onsubmit="return isValid();" >
						<tr>
						 <td   bgcolor="#dddddd" colspan="13"> ҵ�����:
              <input type="text" name="qynum" size="5" value="<%=qynum%>"  >&nbsp;&nbsp;&nbsp;
			  �豸����:
              <input type="text" name="qsbmc" size="10" value="<%=qsbmc%>"  >&nbsp;&nbsp;&nbsp;
			  ��������:
              <input type="text" name="qwtms" size="20" value="<%=qwtms%>"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="q" value="�� ѯ">
						 </td>
						</tr>
                           <tr>
                            <td  align="center" bgcolor="#dddddd">���</td>
							<td  align="center"   bgcolor="#dddddd">����</td>
							<td   align="center" bgcolor="#dddddd" ><div align="center" >ҵ�����</div></td>
							<td   align="center" bgcolor="#dddddd" ><div align="center" >�豸����</div></td>
							<td   align="center"bgcolor="#dddddd" width="50%"  ><div align="center" >��������</div></td>
							<td   align="center"bgcolor="#dddddd"  ><div align="center" >״̬</div></td>
							<td     bgcolor="#dddddd"  align="center"  ><div align="center"  >����ʱ��</div></td>
                          </tr>

				  <%
 
						while(rs2.next())
						{
								s++;
								rec_id=rs2.getInt("rec_id");
 								tqsnum=rs2.getString("ynum");
								sbmc=rs2.getString("sbmc");
								wtms=rs2.getString("wtms");
								zt=rs2.getInt("zt");
								switch(zt)
								{
									case 0 :szts="<FONT SIZE=2 COLOR=#6633FF>��ά��</FONT>"; break;
									case 1 :szts="<FONT SIZE=2 COLOR=#336600>���޺�</FONT>"; break;
								}
 
  								addtime=rs2.getString("addtime");

					%>
					  <TR height="20"> 
						<td bgcolor="#FFFFFF" align="center"><%=s%></td>
						<td bgcolor="#FFFFFF" width="5%" align="center"><input type="button" value="����ά�� " onclick="deal('<%=rec_id%>')"> </td>
						<TD bgcolor="#FFFFFF"align="center"><%=tqsnum%></TD>
						<TD bgcolor="#FFFFFF"align="center"><%=sbmc%></TD>
						<TD bgcolor="#FFFFFF"align="left"><%=wtms%></TD>
						<TD bgcolor="#FFFFFF"align="center"><%=szts%></TD>
						<td bgcolor="#FFFFFF" align="center"><%=addtime.substring(0,19)%></td>
					  </TR>
					  <%
				}
				rs2.close();
				%>

						</form>
					 </table>

<center>
  <font size="2">
 <%
 if(intPageCount*pageLine<totalRec)
intPageCount++;
if(intPage>intPageCount)
  intPage=intPageCount;
if(intPage<1)
      intPage=1;
 if(intPage<2)
     out.print("��ҳ ��һҳ  ");
else{
  out.print("<a href='m_deal_bx.jsp?page=1' ><font color='#3300FF' size='2'>��ҳ</font></a>&nbsp;");
  out.print("<a href='m_deal_bx.jsp?page="+(intPage-1)+"' ><font color='#3300FF' size='2'>��һҳ</font></a>&nbsp; ");
    }
if(intPage-intPageCount>=0)
   out.print("��һҳ βҳ");
else{
  out.print("<a href='m_deal_bx.jsp?page="+(intPage+1)+"'><font color='#3300FF' size='2'>��һҳ</font></a>&nbsp;<a href='m_deal_bx.jsp?page="+intPageCount+"'><font color='#3300FF' size='2'>βҳ</font></a>&nbsp;");
    }
out.print(" ҳ��:<b><font color=red>"+intPage+"</font>/<font color=red>"+intPageCount+"</font></b>ҳ ");
out.print("��<b><font color=red>"+totalRec+"</font></b>����¼  <b><font color=red>"+pageLine+"</font></b>��/ҳ");
    %></font>
</center>

				<!--0000000000000000000000000000000000000000000000000000000000000000000 -->
                      <br />			
				</td>
                  </tr>
                </tbody>
              </table>
            </div></td>
            <td width="1" background="images/tab_bg.gif"><img height="1" 
            src="images/tab_bg.gif" width="1" /></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr>
      <td background="images/tab_bg.gif" bgcolor="#ffffff"><img height="1" 
      src="images/tab_bg.gif" width="1" /></td>
    </tr>
  </tbody>
</table>
</body>
</html>




