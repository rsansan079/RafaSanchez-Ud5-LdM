<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
    </head>
    <body>
      <xsl:text>Nombre y Apellidos:Rafael Sánchez</xsl:text>
      <ol>
        <xsl:apply-templates select="bib/libro[precio &lt; 100]">
        </xsl:apply-templates>
      </ol>
    </body>
  </html>
</xsl:template>

<xsl:template match="libro">
  <li>
    <xsl:value-of select="titulo"/>
  </li>
</xsl:template>

</xsl:stylesheet>
