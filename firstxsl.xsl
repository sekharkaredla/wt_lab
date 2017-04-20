<?xml version = "1.0" encoding = "ISO-8859-1"?>
<xsl:stylesheet version = "1.0"
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:template match = "/">
<html>
<body>
<table border="1px">
  <tr>
    <th>NAME</th>
    <th>COLLEGE</th>
    <th>MOBILE NUMBER</th>
    <th>ROLL NUMBER</th>
    <th>ATTENDENCE</th>
  </tr>
  <xsl:for-each select="student_data/student">
    <xsl:sort select="name"/>
    <xsl:if test="atten &gt; 65">
  <tr>
    <td><xsl:value-of select = "name"/></td>
    <td><xsl:value-of select = "clg"/></td>
    <td><xsl:value-of select = "phone"/></td>
    <td><xsl:value-of select = "@roll"/></td>
    <td><xsl:value-of select = "atten"/></td>
  </tr>
    </xsl:if>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
