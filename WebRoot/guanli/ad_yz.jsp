<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="db"  scope="page" class="xqwy.xqwy"/>

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
function isValid() 
{
	 if(document.form1.ynum.value=="")
	{
		alert("����ҵ�����!");
		document.form1.ynum.focus();
		return false;
	}
	if(document.form1.pawd1.value=="")
	{
		alert("��������!");
		document.form1.pawd1.focus();
		return false;
	}
	if(document.form1.pawd2.value=="")
	{
		alert("����ȷ������!");
		document.form1.pawd2.focus();
		return false;
	}
	if(document.form1.pawd2.value!=document.form1.pawd1.value)
	{
		alert("�������벻һ��!");
		document.form1.pawd2.focus();
		return false;
	}
	 if(document.form1.l.value=="")
	{
		alert("����¥��!");
		document.form1.l.focus();
		return false;
	}
	 if(document.form1.d.value=="")
	{
		alert("���뵥Ԫ��!");
		document.form1.d.focus();
		return false;
	}

	if(document.form1.yname.value=="")
	{
		alert("����ҵ������!");
		document.form1.yname.focus();
		return false;
	}
	if(document.form1.mz.value=="")
	{
		alert("�������!");
		document.form1.mz.focus();
		return false;
	}
	if(document.form1.intime.value=="")
	{
		alert("�����סʱ��!");
		document.form1.intime.focus();
		return false;
	}
	if(document.form1.tel.value=="")
	{
		alert("������ϵ��ʽ!");
		document.form1.tel.focus();
		return false;
	}
}
 </script>

</head>

<body>
<%@  include file="top.jsp" %>
 
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
                background="images/tab_active_bg.gif" class="tab"><strong>���ҵ��</strong></td>
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
						<form name="form1" action="ad_yz1.jsp" method="post"  onsubmit="return isValid();" >
			<tr>
				<td width="18%"  align="right" bgcolor="#dddddd">ҵ����ţ�</td>
				<td  width="82%"  bgcolor="#FFFFFF">
				  <input type="text" name="ynum" maxlength="50" size="23" value="" class="input"><FONT SIZE="2" COLOR="#C0C0C0">&nbsp;&nbsp;�磺�� ¥��+��Ԫ�����</FONT>
				</td>
			  </tr>
			  <tr>
				<td width="18%"  align="right" bgcolor="#dddddd">���룺</td>
				<td  width="82%"  bgcolor="#FFFFFF">
				  <input type="password" name="pawd1" maxlength="50" size="10" value="" class="input">
				</td>
			  </tr>
			  <tr>
				<td width="18%"  align="right" bgcolor="#dddddd">ȷ�����룺</td>
				<td  width="82%"  bgcolor="#FFFFFF">
				  <input type="password" name="pawd2" maxlength="50" size="10" value="" class="input">
				</td>
			  </tr>
			  <tr>
				<td width="18%"  align="right" bgcolor="#dddddd">¥��/��Ԫ�ţ�</td>
				<td  width="82%"  bgcolor="#FFFFFF">
				  <input type="text" name="l" maxlength="50" size="15" value=""> # ¥ <input type="text" name="d" maxlength="50" size="15" value="">&nbsp;&nbsp;��Ԫ��&nbsp; <FONT SIZE="2" COLOR="#C0C0C0">&nbsp;&nbsp;�磺705</FONT>
				</td>
			  </tr>
			  <tr>
				<td width="18%"  align="right" bgcolor="#dddddd">ҵ��������</td>
				<td  width="82%"  bgcolor="#FFFFFF">
				  <input type="text" name="yname" maxlength="50" size="23" value="" class="input">
				</td>
			  </tr>
			  <tr>
				<td width="18%"  align="right" bgcolor="#dddddd">�Ա�</td>
				<td  width="82%"  bgcolor="#FFFFFF">
				  <input name="sex" type="radio" value="1" checked><FONT SIZE="2" COLOR="">��</FONT> <input name="sex" type="radio" value="2" ><FONT SIZE="2" COLOR="">Ů</FONT> 
				</td>
			  </tr>
			  <tr>
				<td width="18%"  align="right" bgcolor="#dddddd">�����</td>
				<td  width="82%"  bgcolor="#FFFFFF">
				  <input type="text" name="mz" maxlength="80" size="15" value="" class="input">&nbsp;&nbsp;<sup>m2</sup></FONT>
				</td>
			  </tr>
			  <tr>
				<td width="18%"  align="right" bgcolor="#dddddd">��סʱ�䣺</td>
				<td  width="82%"  bgcolor="#FFFFFF">
				  <input type="text" name="intime" maxlength="80" size="20" value="" class="input">&nbsp;&nbsp;<FONT SIZE="2" COLOR="#C0C0C0">�磺2019-1</FONT>
				</td>
			  </tr>
			  <tr>
				<td width="18%"  align="right" bgcolor="#dddddd">��ϵ��ʽ��</td>
				<td  width="82%"  bgcolor="#FFFFFF">
				  <input type="text" name="tel" maxlength="50" size="23" value="" class="input">
				</td>
			  </tr>
			  <tr>
				<td width="18%"  align="right" bgcolor="#dddddd">��&nbsp;&nbsp;ע��</td>
				<td  width="82%"  bgcolor="#FFFFFF">
				  <textarea name="remark" cols="90" rows="5"></textarea>
				</td>
			  </tr>
			  
			  <tr>
						  <td  width="18%"  align="right" bgcolor="#FFFFFF">&nbsp;</td>
						  <td  width="82%"  bgcolor="#FFFFFF"><input type="submit"  name="isok" value="��  ��" class="button"><input type="reset" value="ȡ  ��"></td>
						 </tr>

						</form>
					 </table>
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




