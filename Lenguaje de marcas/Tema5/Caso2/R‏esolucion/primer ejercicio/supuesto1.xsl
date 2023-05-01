<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version= "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match ="/raiz"> <!-- para elegir todo lo que incluye raiz-->
<html>
    <head>
        <body>
            <h2>Lista de empleados con sueldo mayor a 2000€</h2>
            <ul>
                <li>nombre</li>
                <li>apellidos</li>
                <li>sueldo</li>
            </ul>
            
            <xsl:for-each select="empleado"> <!-- para seleccionar los empleados-->
            <xsl:if test= "sueldo &gt; 2000"><!-- para seleccionar los que tienen un sueldo mayor a2000-->
            <ul>
                <li><xsl:value-of select="nombre"/></li><!-- para mostrar nodo nombre-->
                <li><xsl:value-of select="apellidos"/></li><!-- para mostrar nodo apellidos-->
                <li><xsl:value-of select="sueldo"/></li><!-- para mostrar nodo sueldo-->
                
            </ul>
        </xsl:if>
            </xsl:for-each>
           


            

        </body>
    </head>
</html>

</xsl:template>
</xsl:stylesheet>
