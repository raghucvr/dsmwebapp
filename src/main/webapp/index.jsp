<HTML>
<HEAD>
<TITLE>Digital Security Management</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1250">

<SCRIPT TYPE="text/javascript">
<!--

function newImage(arg) {
	if (document.images) {
		rslt = new Image();
		rslt.src = arg;
		return rslt;
	}
}

function changeImages() {
	if (document.images && (preloadFlag == true)) {
		for (var i=0; i<changeImages.arguments.length; i+=2) {
			document[changeImages.arguments[i]].src = changeImages.arguments[i+1];
		}
	}
}

var preloadFlag = false;
function preloadImages() {
	if (document.images) {
		company_over = newImage("images/company-over.gif");
		products_over = newImage("images/products-over.gif");
		services_over = newImage("images/services-over.gif");
		support_over = newImage("images/support-over.gif");
		news_over = newImage("images/news-over.gif");
		preloadFlag = true;
	}
}

// -->
</SCRIPT>



<style type="text/css">
<!--
.style1 {
	font-size: 16px;
	font-weight: bold;
}
-->
</style>
</HEAD>
<link href="css/styles.css" rel="stylesheet" type="text/css">
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0 ONLOAD="preloadImages();"><center>


<TABLE WIDTH=775 BORDER=0 CELLPADDING=0 CELLSPACING=0 class="frame">
	<TR>
		<TD COLSPAN=4 ROWSPAN=3>
			<IMG SRC="images/title.gif" WIDTH=218 HEIGHT=134 ALT=""></TD>
		<TD COLSPAN=17>
			<IMG SRC="images/top1.gif" WIDTH=557 HEIGHT=44 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=44 ALT=""></TD>
	</TR>
	<TR>
		<TD COLSPAN=5>
			<A HREF="index.html"
				ONMOUSEOVER="window.status='company'; changeImages('company', 'images/hr.jpg'); return true;"
				ONMOUSEOUT="window.status=''; changeImages('company', 'images/h1g.jpg'); return true;"></A></TD>
		
		
		
		<TD>
			<IMG SRC="images/top3.gif" WIDTH=17 HEIGHT=47 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=47 ALT=""></TD>
	</TR>
	<TR>
		<TD COLSPAN=17>
			<IMG SRC="images/top2.gif" WIDTH=557 HEIGHT=43 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=43 ALT=""></TD>
	</TR>
	<TR>
		<TD ROWSPAN=9>
			<IMG SRC="images/news2.gif" WIDTH=23 HEIGHT=346 ALT=""></TD>
		<TD>
			<IMG SRC="images/b1.jpg" WIDTH=181 HEIGHT=83 ALT=""></TD>
		<TD COLSPAN=3 ROWSPAN=9>
			<IMG SRC="images/news3.gif" WIDTH=22 HEIGHT=346 ALT=""></TD>
		
		<TD COLSPAN=5 ROWSPAN=9>
			<IMG SRC="images/main_image.gif" WIDTH=222 HEIGHT=346 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=83 ALT=""></TD>
	</TR>
	<TR>
		<TD ROWSPAN=8 align="left" valign="top" bgcolor="#D8E9D6">			<span class="text1">EnterPrises</span><br>
		 Today’s Enterprises need to keep their utmost concern about their business information.  They have to secure it and at the same time if  it is a web-based on they have to keep their full attention  on that as if the more sensitive information is going to be published on the net. 		  <p><span class="text1">Security</span><br>
		      Particularly the enterprises want to mange their security digitally or electronically as if the authenticated users have their authenticated information.  No one can access the information for which he is not authenticated.</p>
		    
        <p><br>
          <br>
          
      </TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=19 ALT=""></TD>
	</TR>
	<TR>
		<TD COLSPAN=3 ROWSPAN=3><p class="style1"> Welcome to Web App-JDBC DataSource Example</p>
		  <p class="style1">-Devops Cloud - Project Info </p>
		  <%@ page import="java.util.Properties,
                 java.io.PrintWriter,
                 java.sql.*"
 %>
 

<table  border=0 cellspacing="18" cellpadding="0">
  <tr>
    <td valign="top">
      <p>
<%
  Connection conn  = null;
  Statement stmt = null;
  ResultSet rs = null;
  try {
    Driver myDriver = (Driver) Class.forName("weblogic.jdbc.pool.Driver").newInstance();
    conn = myDriver.connect("jdbc:weblogic:pool:dsmds1", null);
    
    stmt = conn.createStatement();
    rs = stmt.executeQuery("select * from SOP_SIS_SI " );
 %>
  <HR>
  <table border=1 cellpadding=5>
  <th>PROJECTNAME</th>
  <th>MODULENO</th>
  <th>MODULE NAME</th>
  <th>MODULE EXPLANATION</th>

 <%
 	  while (rs.next()) {
      String projectname = rs.getString("projectname");
 %> 
      <tr>
       <td><%= rs.getString("projectname") != null ? rs.getString("projectname") : "&nbsp;" %></td>
       
       <td><%= rs.getString("noofmodules") != null ? rs.getString("noofmodules") : "&nbsp;" %></td>
       <td><%= rs.getString("modulename") != null ? rs.getString("modulename") : "&nbsp;" %></td>
<td><%= rs.getString("moduleexplanation") != null ? rs.getString("moduleexplanation") : "&nbsp;" %></td>
      </tr>
 <%
    }
 %>
	</table>
 <%
  }
  catch (Exception ex){
    out.println("<p><b>!!  Failed !!<br><br> exception </b><br><br>");
    ex.printStackTrace(new PrintWriter(out));
  }
  finally {
    try {
      if(rs != null)
        rs.close();
      if(stmt != null)
        stmt.close();
      if(conn != null)
        conn.close();
    } catch (SQLException sqlex){
      out.println("<p><b>!!  Failed !!<br><br>  exception </b><br><br>");
      sqlex.printStackTrace(new PrintWriter(out));
    }
  }
%>    </td>
  </tr>
</table>
<br>

<table cellspacing="0" cellpadding="0"  border="0" width="100%">
  <tr>
    <td  width="100%" bgcolor="#ff0000" height="1">
      <p class="small">&nbsp;</p>    </td>
  </tr>
</table>
		<TD COLSPAN=22>
			<IMG SRC="images/spacer.gif" WIDTH=245 HEIGHT=7 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=7 ALT=""></TD>
	</TR>
	<TR>
		<TD COLSPAN=6 align="left" valign="top" background="images/spacer.gif">			

<br>



		<TD COLSPAN=2>
			<IMG SRC="images/spacer.gif" WIDTH=26 HEIGHT=63 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=63 ALT=""></TD>
	</TR>
	<TR>
		
			
		<TD COLSPAN=6>
			<IMG SRC="images/spacer.gif" WIDTH=190 HEIGHT=32 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=32 ALT=""></TD>
	</TR>
	<TR>
		<TD COLSPAN=3 ROWSPAN=4>
			</TD>
		<TD COLSPAN=8>
			<IMG SRC="images/spacer.gif" WIDTH=245 HEIGHT=24 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=24 ALT=""></TD>
	</TR>
	<TR>
		<TD COLSPAN=6 align="left" valign="top" background="images/spacer.gif">
			
		<TD COLSPAN=2>
			<IMG SRC="images/spacer.gif" WIDTH=26 HEIGHT=65 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=65 ALT=""></TD>
	</TR>
	<TR>
		
		<TD COLSPAN=6>
			<IMG SRC="images/spacer.gif" WIDTH=190 HEIGHT=27 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=27 ALT=""></TD>
	</TR>
	<TR>
		<TD COLSPAN=8>
			<IMG SRC="images/spacer.gif" WIDTH=245 HEIGHT=26 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=26 ALT=""></TD>
	</TR>
	<TR>
		<TD COLSPAN=3 ROWSPAN=3>
			<IMG SRC="images/logos.gif" WIDTH=211 HEIGHT=137 ALT=""></TD>
		<TD COLSPAN=3 ROWSPAN=3>
			<IMG SRC="images/part2.gif" WIDTH=23 HEIGHT=137 ALT=""></TD>
		<TD COLSPAN=6>
			<IMG SRC="images/part1.gif" WIDTH=226 HEIGHT=44 ALT=""></TD>
		<TD ROWSPAN=3>
			<IMG SRC="images/part4.gif" WIDTH=43 HEIGHT=137 ALT=""></TD>
		<TD COLSPAN=8>
			<IMG SRC="images/cl1.gif" WIDTH=272 HEIGHT=44 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=44 ALT=""></TD>
	</TR>
	<TR>
		<TD COLSPAN=6 align="left" valign="top" background="images/b_part.gif">
			<span class="text1">STRATEGIES</span><br>
			The admin can monitor,detect & prevent the users from accessing the unauthenticated information through assigning roles,responsibilities & creating users or removing users.</TD>
		<TD COLSPAN=6 align="left" valign="top" background="images/b_cl.gif">
			<span class="text1"> SERVICE</span><br>
			Admin has the sole power to view the details of the registered users, mailing service and the reports of the logs thereof added since the user has login.</TD>
		<TD COLSPAN=2>
			<IMG SRC="images/cl2.gif" WIDTH=47 HEIGHT=65 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=65 ALT=""></TD>
	</TR>
	<TR>
		<TD>
			<A HREF="#"
				ONMOUSEOVER="window.status='more';  return true;"
				ONMOUSEOUT="window.status='';  return true;">
				<IMG SRC="images/more-43.gif" WIDTH=60 HEIGHT=28 BORDER=0 ALT="more"></A></TD>
		<TD COLSPAN=5>
			<IMG SRC="images/part3.gif" WIDTH=166 HEIGHT=28 ALT=""></TD>
		<TD COLSPAN=4>
			<A HREF="#"
				ONMOUSEOVER="window.status='more';  return true;"
				ONMOUSEOUT="window.status='';  return true;">
				<IMG SRC="images/more-45.gif" WIDTH=56 HEIGHT=28 BORDER=0 ALT="more"></A></TD>
		<TD COLSPAN=4>
			<IMG SRC="images/cl3.gif" WIDTH=216 HEIGHT=28 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=28 ALT=""></TD>
	</TR>
	<TR>
		<TD COLSPAN=21>
			<IMG SRC="images/down1.gif" WIDTH=775 HEIGHT=25 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=25 ALT=""></TD>
	</TR>
	<TR>
		<TD COLSPAN=3 align="center" valign="middle" bgcolor="#191919" class="text2">&nbsp;
			</TD>
		<TD COLSPAN=3>
			<IMG SRC="images/down2.gif" WIDTH=23 HEIGHT=38 ALT=""></TD>
		<TD COLSPAN=15 align="center" valign="middle" class="text3">			  </TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=1 HEIGHT=38 ALT=""></TD>
	</TR>
	<TR>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=23 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=181 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=7 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=7 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=8 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=8 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=60 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=14 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=29 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=26 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=79 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=18 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=43 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=24 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=19 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=7 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=6 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=95 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=74 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=30 HEIGHT=1 ALT=""></TD>
		<TD>
			<IMG SRC="images/spacer.gif" WIDTH=17 HEIGHT=1 ALT=""></TD>
		<TD></TD>
	</TR>
</TABLE>

</center></BODY>

</HTML>