<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version= "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match ="/deportistas">
<html>
    <head>

    </head>
    <body>
        <h2><b>Tabla de deportistas</b></h2>
        <table border="1">
            <tr>
                <th><b>Nombre</b></th>
                <th><b>Identificador</b></th>
                <th><b>Deporte</b></th>
                <th><b>titulo</b></th>
            </tr>
            <xsl:for-each select="deportista">
            
           
          <!--  <xsl:if test="price &gt;8"> -->
            <xsl:choose>
                <xsl:when test= "titulos &gt;10" >
            <tr style="background-color:green">
                
                <td><xsl:value-of select="nombre"/></td> 
                
                <td><xsl:value-of select="@identificador"/></td>

                <td><xsl:value-of select="deporte"/></td>
                
                <td><xsl:value-of select="titulos"/></td>  
            </tr>
             </xsl:when>
             <xsl:otherwise>
                <tr style="background-color:red">
                    <td><xsl:value-of select="nombre"/></td> 
                    
                    <td><xsl:value-of select="@identificador"/></td>
    
                    <td><xsl:value-of select="deporte"/></td>
                    
                    <td><xsl:value-of select="titulos"/></td>  
                </tr>
             </xsl:otherwise>
            </xsl:choose>
            <!--</xsl:if> -->
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>