<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="usuarioID" />
<xsl:template match="/tabla">
      <xsl:variable name="titulo">
        Festival Shakespeare Buenos Aires
      </xsl:variable>
      <html>
        <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
          <title><xsl:value-of select="$titulo" /></title>
        </head>
        <body>
          <h1><xsl:value-of select="$titulo" /></h1>
          <h2>Eventos del dia: <xsl:value-of select="@fecha" /></h2>
          <table border="1">
          <tr style="background-color:green">
                <th style="color:white">Titulo</th>
                <th style="color:white">Descripcion</th>
                <th style="color:white">Lugar</th>
                <th style="color:white">Hora</th>
                <th style="color:white">Artista</th>
                <th style="color:white">Biografia</th>
            </tr>
            <tbody>
                <xsl:for-each select="fila">
										<tr>
                    <xsl:variable name="titulo">
                        <xsl:value-of select="titulo" />
                    </xsl:variable>               
     
                    <xsl:variable name="descripcion">
                        <xsl:value-of select="descripcion" />
                    </xsl:variable>      
                    
                    <xsl:variable name="lugar">
                        <xsl:value-of select="lugar" />
                    </xsl:variable>      
                   
                    <xsl:variable name="hora">
                        <xsl:value-of select="hora" />
                    </xsl:variable>      
                
                    <xsl:variable name="artista">
                        <xsl:value-of select="artista" />
                    </xsl:variable>      
                
                    <xsl:variable name="bio">
                        <xsl:value-of select="bio" />
                    </xsl:variable>      
              	
										<xsl:call-template name="imprimirCelda">
											<xsl:with-param name="elem" select="$titulo" />
										</xsl:call-template>

										<xsl:call-template name="imprimirCelda">
											<xsl:with-param name="elem" select="$descripcion" />
										</xsl:call-template>

										<xsl:call-template name="imprimirCelda">
											<xsl:with-param name="elem" select="$lugar" />
										</xsl:call-template>

										<xsl:call-template name="imprimirCelda">
											<xsl:with-param name="elem" select="$hora" />
										</xsl:call-template>

										<xsl:call-template name="imprimirCelda">
											<xsl:with-param name="elem" select="$artista" />
										</xsl:call-template>

										<xsl:call-template name="imprimirCelda">
											<xsl:with-param name="elem" select="$bio" />
										</xsl:call-template>
                    </tr>

              </xsl:for-each>
            </tbody>
           </table>
        </body>
      </html>
</xsl:template>

<xsl:template name="imprimirCelda">
	<xsl:param name="elem" />
                    <td><xsl:if test="$elem = ''"><xsl:call-template name="sinDatos" /></xsl:if>
													<xsl:value-of select="$elem"/></td>
</xsl:template>

<xsl:template name="sinDatos" >
	<p align="center"><i>(sin datos)</i></p>
</xsl:template>
</xsl:stylesheet>
