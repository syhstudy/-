<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="db1"  scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="db2"  scope="page" class="xqwy.xqwy"/>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�޸�ҵ����Ϣ</title>
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


//������ʾ���������
 function showadv(){
if (document.form1.advshow.checked == true) {
	document.getElementById("adv").style.display = "block";
	document.getElementById("advance").innerHTML="�رո�������";
}else{
	document.getElementById("adv").style.display = "none";
	document.getElementById("advance").innerHTML="��ʾ��������";
}
}
	 function isValid() 
{

	 var oq1=document.form1.wpswd1.value;
	 var oq2=document.form1.wpswd2.value;


	if (document.form1.advshow.checked == true)
	{
			if(oq1!="")
			{
				if(oq2!="")
				{
					if(oq1!=oq2)
					{
						alert("������������룬��һ����");
						document.form1.wpswd1.focus();
						return false;
					}
				}
				else
				{
					alert("������ȷ������");
					document.form1.wpswd2.focus();
					return false;
				}

			}
			else
			{
				alert("���������룡");
				document.form1.wpswd1.focus();
				return false;
			}
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
// -->
</SCRIPT>

</head>

<body>
<%
 String rec_id= request.getParameter("rec_id") ;
String	ynum	="";
String	l	="";
String	d	="";
String	yname	="";
String	sex	="";
String	mz	="";
String	intime	="";
String	tel	="";
String	remark	="";
String pawd="";
int xingbei=0;

String sql2="select * from yz  where  rec_id='"+rec_id+"'";

ResultSet rs4=db1.executeQuery(sql2);

if (rs4.next())
{
	ynum	=rs4.getString("ynum");
	pawd	=rs4.getString("pawd");
	l	=rs4.getString("l");
	d	=rs4.getString("d");
	yname	=rs4.getString("yname");
	xingbei	=rs4.getInt("sex");
	mz	=rs4.getString("mz");
	intime	=rs4.getString("intime");
	tel	=rs4.getString("tel");
	remark	=rs4.getString("remark");


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
						<form name="form1" action="update_yz1.jsp" method="post"  onsubmit="return isValid();" >
							<input type="hidden" name="rec_id" value=<%=rec_id%>>
						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> 
							  <div align="right">ҵ�����: </div></td>
												<td width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<B><FONT SIZE="2" COLOR="#000000"><%=ynum%></FONT></B></td>
						  </tr>

						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> 
							  <div align="right">��������: </div></td>
												<td width="82%"  bgcolor="#FFFFFF">&nbsp;<input name="advshow" type="checkbox" id="advcheck" onclick="showadv()" value="1" />
							  <span id="advance"> 
							  <label for=advcheck>����</label>
							  </span> </font> <table border="0" class="tableborder1" id="adv" style="DISPLAY: none"  name="adv">
								<tr> 
								  <td><font size="2">������</font></td>
								  <td><font size="2"> 
									<input type="password" name="wpswd1" size="15"  >
									</font></td>
								</tr>
								<tr> 
								  <td><font size="2">ȷ������</font></td>
								  <td><font size="2"> 
									<input type="password" name="wpswd2" size="15"  >
									</font></td>
								</tr>
							  </table></td>
						  </tr>
	  <tr> 
        <td  bgcolor="#dddddd"  > <div align="right">¥��/��Ԫ��:</strong></div></td>
        <td bgcolor="#FFFFFF"  > 
          <input type="text" name="l" maxlength="50" size="15" value="<%=l%>"  > # ¥ <input type="text" name="d" maxlength="50" size="15" value="<%=d%>"  >&nbsp;&nbsp;��Ԫ��&nbsp;  
          </td>
      </tr>
	  <tr> 
        <td  bgcolor="#dddddd"  > <div align="right">ҵ������:</div></td>
        <td bgcolor="#FFFFFF" > 
          <input type="text" name="yname" value="<%=yname%>"></span>
          </td>
      </tr>

      <tr> 
        <td   bgcolor="#dddddd" > <div align="right">�Ա�:</div></td>
        <td bgcolor="#FFFFFF" >
                            <table width="179"  border="0" cellpadding="0" cellspacing="0">
                              <tr> 
                                <td width="51"> 
                                  <div align="right"> 
								  <!--88888888888888888888888888888888888-->
                                   <%
									if(xingbei==1)
									{
									%>
									<input name="sex" type="radio" value="1" checked>
                                   <%
									}else
									{
									%>
									<input name="sex" type="radio" value="1" >
									<%
									}
									%>
								  <!--88888888888888888888888888888888888-->
								  </div>
                                </td>
                                <td width="37" class="bbb">��</span></td>
                                <td width="55"> 
                                  <div align="right"> 
								  <!--88888888888888888888888888888888888-->
                                   <%
									if(xingbei==2)
									{
									%>
									<input name="sex" type="radio" value="2" checked>
                                   <%
									}else
									{
									%>
									<input name="sex" type="radio" value="2" >
									<%
									}
									%>
								  <!--88888888888888888888888888888888888-->
								  </div>
                                </td>
                                <td width="36" class="bbb">Ů</span></td>
                              </tr>
                          </table>
		</td>
      </tr>
	  <tr> 
        <td  bgcolor="#dddddd"  > <div align="right">���:</div></td>
        <td bgcolor="#FFFFFF" > 
          <input type="text" name="mz" value="<%=mz%>"></span>
          </td>
      </tr>
	  <tr> 
        <td  bgcolor="#dddddd"  > <div align="right">��סʱ��:</div></td>
        <td bgcolor="#FFFFFF" > 
          <input type="text" name="intime" value="<%=intime%>"></span>
          &nbsp;&nbsp; </td>
      </tr>
       <tr> 
        <td  bgcolor="#dddddd"  > <div align="right">��ϵ��ʽ:</div></td>
        <td bgcolor="#FFFFFF" > 
          <input type="text" name="tel" size="50" value="<%=tel%>"></span>
          </span></td>
      </tr>
      <tr> 
        <td  bgcolor="#dddddd"  > <div align="right">��&nbsp;&nbsp;ע:</div></td>
        <td bgcolor="#FFFFFF" > 
          <textarea name="remark" cols="50" rows="5"><%=remark%></textarea></td>
      </tr>
 

						
						<tr>
						  <td  colspan=2 bgcolor="#FFFFFF" align="center"><input type="submit"  name="isok" value="��  ��" class="button">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input onclick="window.opener=null;window.close()" type="button" value="ȡ  ��"></td>
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




