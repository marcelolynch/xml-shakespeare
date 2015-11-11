declare variable $date as xs:date external;
<tabla fecha="{$date}"> {
    for $event in doc("shakespeare-eventos-2012.xml")//EVENT[DATE = $date and ID_PLAY ne 0]
    let $obra:= doc("shakespeare-obras-2012.xml")//PLAY[@ID = $event/ID_PLAY]
    let $sede:= doc("shakespeare-sedes-2012.xml")//PLACE[@ID = $event/ID_PLACE]
    let $artista:= doc("shakespeare-artistas-2012.xml")//ARTIST[@ID = $obra/ID_ARTIST1]
    return
	<fila>
	    <titulo>{data($obra/TITLE//text())}</titulo>
	    <descripcion>{$obra/SYNOPSIS_ES/text()}</descripcion>
	    <lugar>
		<title>{$sede/TITLE/text()}</title>
		<address>{$sede/ADDRESS/text()}</address>
	    </lugar>
	    <hora>{$event/TIME/text()}</hora>
	    <artista>{$artista/NAME/text()}</artista>
	    <bio>{$artista/BIO_ES/text()}</bio>
	</fila> 
} </tabla>
