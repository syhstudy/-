<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="dbn"  scope="page" class="xqwy.xqwy"/>
<jsp:useBean id="dbj"  scope="page" class="xqwy.xqwy"/>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�޸��û���Ϣ</title>
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
if (document.forma.advshow.checked == true) {
	document.getElementById("adv").style.display = "block";
	document.getElementById("advance").innerHTML="�رո�������";
}else{
	document.getElementById("adv").style.display = "none";
	document.getElementById("advance").innerHTML="��ʾ��������";
}
}
	 function isValid() 
{

	 var oq1=document.forma.wpswd1.value;
	 var oq2=document.forma.wpswd2.value;


	if (document.forma.advshow.checked == true)
	{
			if(oq1!="")
			{
				if(oq2!="")
				{
					if(oq1!=oq2)
					{
						alert("������������룬��һ����");
						document.forma.wpswd1.focus();
						return false;
					}
				}
				else
				{
					alert("������ȷ������");
					document.forma.wpswd2.focus();
					return false;
				}

			}
			else
			{
				alert("���������룡");
				document.forma.wpswd1.focus();
				return false;
			}
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
// -->
</SCRIPT>

</head>

<body>
<%
 String rec_id= request.getParameter("rec_id") ;

String	wnum	="";
String	wpswd	="";
String	tname	="";
String	tsex	="";
String	tdep	="";
String	tel	="";
String	address	="";
String sql2="select * from admins where  rec_id='"+rec_id+"'";

int intsex=0,tpri=0;
ResultSet rs4=dbn.executeQuery(sql2);
String t1="",t2="",t4="";
if (rs4.next())
{
 								wnum=rs4.getString("wnum");
								wpswd=rs4.getString("wpswd");
								tname=rs4.getString("tname");
								intsex=rs4.getInt("tsex");
								if (intsex==1)
										tsex="��";
								else
										tsex="Ů";
								tdep=rs4.getString("tdep");
								tpri=rs4.getInt("tpri");
								if(tpri==2)
									 t2=" checked  ";

								if(tpri==1)
									 t1=" checked  ";
								if(tpri==4)
									t4=" checked   ";
								tel=rs4.getString("tel");
								address=rs4.getString("address");


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
						<form name="forma" action="update_admin1.jsp" method="post"  onsubmit="return isValid();" >
							<input type="hidden" name="rec_id" value=<%=rec_id%>>
						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> 
							  <div align="right">�û���: </div></td>
												<td width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<%=wnum%></td>
						  </tr>
						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> 
							  <div align="right">Ȩ&nbsp;&nbsp;��: </div></td>
												<td width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;
												<input type="radio" name="pri"  value="2" <%=t2%> >����&nbsp;&nbsp;
												<input type="radio" name="pri" value="1"  <%=t1%> >С������Ա&nbsp;&nbsp;
												<input type="radio" name="pri" value="4"  <%=t4%> >ά�޹�</td>
												
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
							<td  width="18%"  align="right" bgcolor="#dddddd"> 
							  <div align="right">��&nbsp;&nbsp;��: </div></td>
												<td width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input name="tname" type="text" size="30" value="<%=tname%>"  ></td>
						  </tr>
						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> 
							  <div align="right">��&nbsp;&nbsp;��: </div></td>
												<td width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp; <table  border="0" cellpadding="0" cellspacing="0">
								<tr> 
								  <td width="51"> <div align="right"> 
									  <!--88888888888888888888888888888888888-->
									  <%
														if(intsex==1)
														{
														%>
									  <input name="tsex" type="radio" value="1" checked>
									  <%
														}else
														{
														%>
									  <input name="tsex" type="radio" value="1" >
									  <%
														}
														%>
									  <!--88888888888888888888888888888888888-->
									</div></td>
								  <td width="37" class="bbb">��</td>
								  <td width="55"> <div align="right"> 
									  <!--88888888888888888888888888888888888-->
									  <%
														if(intsex==2)
														{
														%>
									  <input name="tsex" type="radio" value="2" checked>
									  <%
														}else
														{
														%>
									  <input name="tsex" type="radio" value="2" >
									  <%
														}
														%>
									  <!--88888888888888888888888888888888888-->
									</div></td>
								  <td width="36" class="bbb">Ů</td>
								</tr>
							  </table></td>
						  </tr>

						 <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> 
							  <div align="right">���ڲ���: </div></td>
												<td width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input name="tdep" type="text" size="30" value="<%=tdep%>"  ></td>
						  </tr>

						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> 
							  <div align="right">��&nbsp;&nbsp;��: </div></td>
												<td width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input name="tel" type="text" size="30" value="<%=tel%>"  ></td>
						  </tr>
						  <tr> 
							<td  width="18%"  align="right" bgcolor="#dddddd"> 
							  <div align="right">��&nbsp;&nbsp;ַ: </div></td>
												<td width="82%"  bgcolor="#FFFFFF"> &nbsp;&nbsp;<input name="address" type="text" size="40" value="<%=address%>"  ></td>
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




