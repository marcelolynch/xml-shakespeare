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
             <tr>
                <th>Titulo</th>
                <th>Descripcion</th>
                <th>Lugar</th>
                <th>Hora</th>
                <th>Artista</th>
                <th>Biografia</th>
             </tr>
            <tbody>
                <xsl:for-each select="fila">

                    <xsl:variable name="titulo">
                        <xsl:value-of select="titulo" />
                    </xsl:variable>               
     
                    <xsl:variable name="desc">
                        <xsl:value-of select="descrip" />
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
              
                    <tr>
                     <td><xsl:value-of select="$titulo" /></td>
                     <td><xsl:value-of select="$desc"/></td>
                     <td><xsl:value-of select="$lugar"/></td>
                     <td><xsl:value-of select="$hora" /></td>
                     <td><xsl:value-of select="$artista"/></td>
                     <td><xsl:value-of select="$bio"/></td>
                    </tr>
                </xsl:for-each>
            </tbody>
           </table>
        </body>
      </html>
    </xsl:if>
</xsl:template>
</xsl:stylesheet>
