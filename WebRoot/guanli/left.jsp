 <%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
 <jsp:useBean id="ldb" scope="page" class="xqwy.xqwy"/>
 <html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��̨����ϵͳ</title>
<link rel="stylesheet" type="text/css" href="images/Style.css">

<style type="text/css">
<!--
.ttl {	CURSOR: hand; COLOR: #000000; PADDING-TOP: 4px
}
BODY {
	MARGIN-TOP: 5px; MARGIN-LEFT: 2px; BACKGROUND-COLOR: #158AAD; TEXT-ALIGN: center
}
td{
	line-height:170%;
}
-->
</style>

<script language="javascript">
function showHide(obj)
{
	obj.style.display = obj.style.display == "none" ? "block" : "none";
}
</script>
</head>

<body>
<!-- ������֤ -->
<%@include file="checklogin.jsp"%>
<%
int u_pri=0;
String th_wnumc="";

	  th_wnumc=(String)session.getAttribute("admin");

	//3 ����Ա��  2 �����   1����С������Ա
	ResultSet urs=ldb.executeQuery("select * from admins where wnum='"+th_wnumc+"'");

	if(urs.next())
	{
		u_pri=urs.getInt("tpri");
	}
	urs.close();

	if(u_pri==2)
	{   //���
%>
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu6)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><strong class="mtitle">ϵͳ����</strong></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu6" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
		   <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="logout.jsp" target="_parent">��ȫ�˳�</a></td>
          </tr>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="upas0.jsp" target="main">�޸�����</a></td>
          </tr>

        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu93)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ҵ����Ϣ����</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu93" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
 
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="ad_yz.jsp" target="main">���ҵ��</a>|<img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_yz.jsp" target="main">����ҵ��</a></td>
          </tr>

        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />


<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu395)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ҵ�����ù���</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu395" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="ad_fy.jsp" target="main">��ӷ���</a>|<img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_fy.jsp" target="main">�������</a></td>
          </tr>

        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu297)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ϵͳʹ��˵��</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu297" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
			<tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="c.jsp" target="main">�鿴ϵͳ˵��</a></td>
          </tr>
         </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />

<%
	;
	}
	if(u_pri==3)
	{	//����Ա
		%>
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu6)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><strong class="mtitle">ϵͳ����</strong></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu6" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
		   <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="logout.jsp" target="_parent">��ȫ�˳�</a>|<img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="upas0.jsp" target="main">�޸�����</a></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />

<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu932)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">��ҵ��Ա����</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu932" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="ad_admin.jsp" target="main">����û�</a>|<img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_admin.jsp" target="main">�����û�</a></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>


<br />


<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu93)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ҵ����Ϣ����</span></td>
          </tr>
        </tbody>
      </table></td>
      
    </tr>
    <tr id="menu93" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
 
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="ad_yz.jsp" target="main">���ҵ��</a>|<img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_yz.jsp" target="main">����ҵ��</a></td>
          </tr>

        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu95)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ҵ��Ͷ�߹���</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu95" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_ts.jsp" target="main">����ҵ��Ͷ��</a></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />

<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu395)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ҵ�����ù���</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu395" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="ad_fy.jsp" target="main">��ӷ���</a>|<img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_fy.jsp" target="main">�������</a></td>
          </tr>

        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br>
 <table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu94)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ͣ����λ����</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu94" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="ad_cw.jsp" target="main">��ӳ�λ</a>|<img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_cw.jsp" target="main">����λ</a></td>
          </tr>
        </tbody>
      </table></td> 

    </tr>
  </tbody>
</table>
<br />

<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu295)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ҵ�����޹���</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu295" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
			<tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_deal_bx.jsp" target="main">������</a>|<img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_bx.jsp" target="main">��ѯ����</a></td>
          </tr>
         </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu632)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">С���������</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu632" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="ad_gg.jsp" target="main">���С������</a></td>
          </tr>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_gg.jsp" target="main">����С������</a></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>

<br />


<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu944)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">������־</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu944" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_rz.jsp" target="main">��ѯ�û�������־</a></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu396)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">���ݿ�ı���</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu396" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="bf.jsp" target="main">����</a>|<img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="hf.jsp" target="main">�ָ�</a></td>
          </tr>

        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu297)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ϵͳʹ��˵��</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu297" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
			<tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="c.jsp" target="main">�鿴ϵͳ˵��</a></td>
          </tr>
         </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<%
	;
	}
	if(u_pri==1)
	{	//С������Ա
		%>
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu6)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><strong class="mtitle">ϵͳ����</strong></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu6" style="display: block">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
		   <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="logout.jsp" target="_parent">��ȫ�˳�</a></td>
          </tr>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="upas0.jsp" target="main">�޸�����</a></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu93)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ҵ����Ϣ����</span></td>
          </tr>
        </tbody>
      </table></td>
      
    </tr>
    <tr id="menu93" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
 
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="ad_yz.jsp" target="main">���ҵ��</a>|<img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_yz.jsp" target="main">����ҵ��</a></td>
          </tr>

        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu95)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ҵ��Ͷ�߹���</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu95" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_ts.jsp" target="main">����ҵ��Ͷ��</a></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>

<br />
 <table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu94)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ͣ����λ����</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu94" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="ad_cw.jsp" target="main">��ӳ�λ</a>|<img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_cw.jsp" target="main">����λ</a></td>
          </tr>
        </tbody>
      </table></td> 

    </tr>
  </tbody>
</table>
<br />
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu632)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">С���������</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu632" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="ad_gg.jsp" target="main">���С������</a></td>
          </tr>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_gg.jsp" target="main">����С������</a></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>

<br />
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu297)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ϵͳʹ��˵��</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu297" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
			<tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="c.jsp" target="main">�鿴ϵͳ˵��</a></td>
          </tr>
         </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<%
	;
	}
	if(u_pri==4)
	{	//ά�޹�
		%>
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu6)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><strong class="mtitle">ϵͳ����</strong></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu6" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
		   <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="logout.jsp" target="_parent">��ȫ�˳�</a></td>
          </tr>
          <tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="upas0.jsp" target="main">�޸�����</a></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu295)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ҵ�����޹���</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu295" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
			<tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_deal_bx.jsp" target="main">������</a>|<img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="m_bx.jsp" target="main">��ѯ����</a></td>
          </tr>
         </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<table cellspacing="1" cellpadding="3" width="150" align="center" bgcolor="#999999" 
border="0">
  <tbody>
    <tr>
      <td class="ttl" onclick="showHide(menu297)" valign="top" align="left" background="images/top-bj3.jpg"><table cellspacing="0" cellpadding="0" width="127" border="0">
        <tbody>
          <tr>
            <td width="8">&nbsp;</td>
            <td align="left" width="117"><span class="mtitle">ϵͳʹ��˵��</span></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
    <tr id="menu297" style="display: none">
      <td valign="top" align="middle" bgcolor="#f3f5f1"><table width="100%">
        <tbody>
			<tr>
            <td align="left"><img height="7" hspace="5" src="images/arrow.gif" width="5" align="absmiddle" /><a  href="c.jsp" target="main">�鿴ϵͳ˵��</a></td>
          </tr>
         </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br />
<%
	;
	}
%>
</body>
</html>
 
