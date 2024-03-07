<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="duracionMaxima" select="240"/> 

<xsl:template match="/">
  <html>
  <head>
    <title>Canciones con duración inferior a <xsl:value-of select="format-number($duracionMaxima div 60, '##0')"/> minutos</title>
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
    </style>
  </head>
  <body>
    <h2>Canciones con duración inferior a <xsl:value-of select="format-number($duracionMaxima div 60, '##0')"/> minutos</h2>
    <table>
      <tr>
        <th>Título de la canción</th>
        <th>Artista</th>
        <th>Álbum</th>
        <th>Duración</th>
      </tr>
      <xsl:for-each select="catalogo/cd/canciones/cancion[duracion &lt; $duracionMaxima]">
        <xsl:variable name="cd" select="catalogo/cd"/>
        <tr>
          <td><xsl:value-of select="titulo"/></td>
          <td><xsl:value-of select="$cd/artista"/></td>
          <td><xsl:value-of select="$cd/titulo"/></td>
          <td><xsl:value-of select="duracion"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
