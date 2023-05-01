<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version= "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match ="/catalog">
<html>
    <head>

    </head>
    <body>
        <h2><b>My CD collection</b></h2>
        <table border="1">
            <tr>
                <th style="background-color:green"><b>title</b></th>
                <th style="background-color:green"><b>artist</b></th>
            </tr>
            <xsl:for-each select="cd">
            <tr>
                <td><xsl:value-of select="title"/></td>
                
                <td><xsl:value-of select="artist"/></td>
                
            </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>