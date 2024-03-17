<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <style type="text/css">
      .table-header {
        background-color: #C0C0C0;
        font-weight: bold;
      }
      .even-row {
        background-color: #F0F0F0;
      }
      .odd-row {
        background-color: #FFFFFF;
      }
      .sobresaliente {
        color: blue;
      }
      .notable {
        color: #007FFF;
      }
      .bien {
        color: black;
      }
      .suficiente {
        color: orange;
      }
      .suspenso {
        color: red;
      }
    </style>
    
    <html>
      <head>
        <title>Notas de Alumnos</title>
      </head>
      <body>
        <div style="text-align:center;">
          <h1>Notas de Alumnos</h1>
          <div style="display: inline-block;">
            <table border="1">
              <tr class="table-header">
                <td colspan="3">Datos</td>
                <td colspan="3">Notas</td>
              </tr>
              <tr class="table-header">
                <td>Nombre</td>
                <td>Apellidos</td>
                <td>Cuestionarios</td>
                <td>Tareas</td>
                <td>Examen</td>
                <td>Final</td>
              </tr>
              <xsl:apply-templates select="notas/alumno[@convocatoria='Junio']"/>
            </table>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="alumno">
    <xsl:variable name="final" select="final"/>
    <xsl:variable name="resultado">
      <xsl:choose>
        <xsl:when test="$final &gt;= 9">Sobresaliente</xsl:when>
        <xsl:when test="$final &gt;= 7">Notable</xsl:when>
        <xsl:when test="$final &gt;= 6">Bien</xsl:when>
        <xsl:when test="$final &gt;= 5">Suficiente</xsl:when>
        <xsl:otherwise>Suspenso</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="color">
      <xsl:choose>
        <xsl:when test="$final &gt;= 9">sobresaliente</xsl:when>
        <xsl:when test="$final &gt;= 7">notable</xsl:when>
        <xsl:when test="$final &gt;= 6">bien</xsl:when>
        <xsl:when test="$final &gt;= 5">suficiente</xsl:when>
        <xsl:otherwise>suspenso</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="rowClass">
      <xsl:choose>
        <xsl:when test="position() mod 2 = 0">even-row</xsl:when>
        <xsl:otherwise>odd-row</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    
    <tr class="{$rowClass}">
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="apellidos"/></td>
      <td><xsl:value-of select="cuestionarios"/></td>
      <td><xsl:value-of select="tareas"/></td>
      <td><xsl:value-of select="examen"/></td>
      <td class="{$color}">
        <xsl:value-of select="$resultado"/>
      </td>
    </tr>
  </xsl:template>
  
  <xsl:template match="matricula"/>
  
</xsl:stylesheet>
