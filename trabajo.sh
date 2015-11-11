java net.sf.saxon.Query junta.xq > datos_tabla.xml date=$1 
java net.sf.saxon.Transform eventos.xsl -s:datos_tabla.xml -o:eventos.html
