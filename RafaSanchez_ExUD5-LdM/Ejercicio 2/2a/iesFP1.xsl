<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
        <title>Nombre y Apellidos: Rafael Sánchez</title>
    </head>
    <body>
        <xsl:text>Nombre y Apellidos: Rafael Sanchez</xsl:text>

      <ul>
        <xsl:apply-templates select="ies/ciclos/ciclo"/>
        
      </ul>
    </body>
  </html>
</xsl:template>
<xsl:template match="ciclo">
  <li>
    <xsl:text>"</xsl:text>
    <xsl:value-of select="nombre"/>
    <xsl:text>"</xsl:text>
  </li>
</xsl:template>

</xsl:stylesheet>
