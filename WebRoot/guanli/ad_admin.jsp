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
 	 if(document.forma.wnum.value=="")
	 {
		 alert("�������û�����"); 
		 document.forma.wnum.focus();
		 return false;
	 }

	 
	 if(document.forma.p1.value=="")
	 {
		 alert("���������룡"); 
		 document.forma.p1.focus();
		 return false;
	 }

	 if(document.forma.p2.value=="")
	 {
		 alert("������ȷ�����룡"); 
		 document.forma.p2.focus();
		 return false;
	 }

	 if(document.forma.p2.value!=document.forma.p2.value)
	 {
		 alert("�������벻һ��"); 
		 document.forma.p2.focus();
		 return false;
	 }

	 if(document.forma.tname.value=="")
	 {
		 alert("������������"); 
		 document.forma.tname.focus();
		 return false;
	 }

	 if(document.forma.tdep.value=="")
	 {
		 alert("���������ڲ��ţ�"); 
		 document.forma.tdep.focus();
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
                background="images/tab_active_bg.gif" class="tab"><strong>����û�</strong></td>
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
						<form name="forma" action="ad_admin1.jsp" method="post"  onsubmit="return isValid();" >

                          <tr>
                            <td width="18%"  align="right" bgcolor="#dddddd">�û�����</td>
                            <td  width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input name="wnum" type="text" size="24"  ></td>
                          </tr>
						  <tr>
                            <td width="18%"  align="right" bgcolor="#dddddd">���룺</td>
                            <td  width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input name="p1" type="password" size="15"   ></td>
                          </tr>
						  <tr>
                            <td width="18%"  align="right" bgcolor="#dddddd">ȷ�����룺</td>
                            <td  width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input name="p2" type="password" size="15"   ></td>
                          </tr>
						  <tr>
                            <td width="18%"  align="right" bgcolor="#dddddd">Ȩ&nbsp;&nbsp;�ޣ�</td>
                            <td  width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input  type="radio" name="pri" value="2" checked>����&nbsp;&nbsp;<input type="radio" name="pri" value="1">С������Ա&nbsp;&nbsp;<input type="radio" name="pri" value="4">ά�޹�</td>
                          </tr>
						  <tr>
                            <td width="18%"  align="right" bgcolor="#dddddd">��&nbsp;&nbsp;����</td>
                            <td  width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input name="tname" type="text" size="30"   ></td>
                          </tr>
						  <tr>
                            <td width="18%"  align="right" bgcolor="#dddddd">��&nbsp;&nbsp;��</td>
                            <td  width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input name="tsex" type="radio" value="1" checked>��&nbsp;&nbsp;<input type="radio" name="tsex" value="2">Ů</td>
                          </tr>

						  <tr>
                            <td width="18%"  align="right" bgcolor="#dddddd">���ڲ��ţ�</td>
                            <td  width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input name="tdep" type="text" size="30"   ></td>
                          </tr>
						  <tr>
                            <td width="18%"  align="right" bgcolor="#dddddd">��&nbsp;&nbsp;����</td>
                            <td  width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input name="tel" type="text" size="30"   ></td>
                          </tr>
						  <tr>
                            <td width="18%"  align="right" bgcolor="#dddddd">��&nbsp;&nbsp;ַ��</td>
                            <td  width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input name="address" type="text" size="55"   ></td>
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




