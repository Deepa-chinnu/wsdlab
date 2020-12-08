<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
	<html>
            <body>
                <h1 align="center">EMPLOYEE MANAGEMENT SYSTEM</h1>
                <div class='COMPANY' style="float:center;">
                    <h2 align="center"></h2>
                    <table border="1" align="center">
                    <tr>
                            <th style="text-align:left">Emp_ID</th>
                            <th style="text-align:left">Emp_Name</th>
                            <th style="text-align:left">Emp_Age</th>
                            <th style="text-align:left">Salary</th>
                            <th style="text-align:left">Emp_Email_ID</th>
                            <th style="text-align:left">Emp_Phone</th>
                            <th style="text-align:left">Emp_Designation</th>
                        </tr>
                        <xsl:for-each select="COMPANY/EMPLOYEE">
                            <tr>
                                <td>
                                    <xsl:value-of select="Emp_ID"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp_Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp_Age"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Salary"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp_Email_ID"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp_Phone"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp_Designation"/>
                                </td>
                                 <td>
                                    <xsl:value-of select="Promotion"/>
                                </td>
                        <xsl:for-each select="COMPANY/EMPLOYEE">     
      <xsl:if test="Emp_Age>50">
      <tr>
          <td><xsl:value-of select="Emp_Name"/></td>
        </tr>
      </xsl:if>
      </xsl:for-each>
                            </tr>
                        </xsl:for-each>
                        
                    </table>
                </div>

            </body>
        </html>
	
	</xsl:template>
</xsl:stylesheet>