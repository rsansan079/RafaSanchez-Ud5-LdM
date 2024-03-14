<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Información del Instituto</title>
      <style>
        table {
          border-collapse: collapse;
          width: 100%;
        }
        th, td {
          border: 1px solid black;
          padding: 8px;
          text-align: left;
        }
        th {
          background-color: #f2f2f2;
        }
        .green {
          color: green;
        }
        .blue {
          color: blue;
        }
        .red {
          color: red;
        }
      </style>
    </head>
    <body>
      <h1><xsl:value-of select="ies/@nombre"/></h1>
      <table>
        <tr>
          <th>Nombre del Ciclo</th>
          <th>Año</th>
        </tr>
        <xsl:apply-templates select="ies/ciclos/ciclo"/>
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="ciclo">
  <tr>
    <td><xsl:value-of select="nombre"/></td>
    <td>
      <xsl:variable name="color">
        <xsl:choose>
          <xsl:when test="decretoTitulo/@año &gt; 2009">green</xsl:when>
          <xsl:when test="decretoTitulo/@año = 2009">blue</xsl:when>
          <xsl:otherwise>red</xsl:otherwise>
        </xsl:choose>
      </xsl:variable>
      <span class="{$color}">
        <xsl:value-of select="decretoTitulo/@año"/>
      </span>
    </td>
  </tr>
</xsl:template>

</xsl:stylesheet>
