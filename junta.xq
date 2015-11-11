declare variable $date as xs:date external;
<tabla fecha="{$date}"> {
    for $event in doc("shakespeare-eventos-2012.xml")//EVENT[DATE = $date and xs:integer(ID_PLAY) ne 0]
    let $obra:= doc("shakespeare-obras-2012.xml")//PLAY[@ID = $event/ID_PLAY]
    let $sede:= doc("shakespeare-sedes-2012.xml")//PLACE[@ID = $event/ID_PLACE]
    let $artista:= doc("shakespeare-artistas-2012.xml")//ARTIST[@ID = $obra/ID_ARTIST1]
    return
	<fila>
	    <titulo>{data($obra/TITLE//text())}</titulo>
	    <descripcion>{data($obra/SYNOPSIS_ES)}</descripcion>
	    <lugar>
		{data($sede/TITLE)} - {data($sede/ADDRESS)}
	    </lugar>
	    <hora>{data($event/TIME)}</hora>
	    <artista>{data($artista/NAME)}</artista>
	    <bio>{data($artista/BIO_ES)}</bio>
	</fila> 
} </tabla>
