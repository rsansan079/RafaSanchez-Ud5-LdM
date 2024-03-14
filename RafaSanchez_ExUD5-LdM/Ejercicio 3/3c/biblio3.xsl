<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
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
        .red {
          background-color: red;
        }
        .italic {
          font-style: italic;
        }
      </style>
    </head>
    <body>
        <xsl:text>Nombre y apellidos:Rafael Sanchez</xsl:text>
      <table>
        <tr>
        </tr>
        <xsl:apply-templates select="bib/libro">
          <xsl:sort select="precio"/>
        </xsl:apply-templates>
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="libro">
  <xsl:variable name="precio" select="precio"/>
  <tr>
    <td>
      <xsl:choose>
        <xsl:otherwise>
          <xsl:value-of select="precio"/>
        </xsl:otherwise>
      </xsl:choose>
    </td>
    <td>
      <xsl:value-of select="titulo"/>
    </td>
    <td>
      <span class="italic"><xsl:value-of select="@año"/></span>
    </td>
  </tr>
</xsl:template>

</xsl:stylesheet>
