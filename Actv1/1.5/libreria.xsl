<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="numPaginas">
    <xsl:choose>
      <xsl:when test=". &gt; 150">
        <span style="color:red">
          <xsl:apply-templates/>
        </span>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="libro">
    <tr>
      <td><xsl:value-of select="isbn"/></td>
      <td><xsl:value-of select="titulo"/></td>
      <td><xsl:value-of select="autor"/></td>
      <td><xsl:value-of select="editor"/></td>
      <td><xsl:value-of select="precio"/></td>
      <td><xsl:value-of select="numPaginas"/></td>
    </tr>
  </xsl:template>
  <xsl:template match="/libreria">
    <html>
      <body>
        <table border="1">
          <tr>
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Editor</th>
            <th>Precio</th>
            <th>Número de Páginas</th>
          </tr>
          <xsl:apply-templates/>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
