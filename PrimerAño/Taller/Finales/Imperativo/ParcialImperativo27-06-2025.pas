type
	paquetes = record
		cod:integer;
		dniE:integer;
		dniR:integer;
		cantObjetos:integer;
		peso:real;
	end;
	
	infoPaquetes=record
		dniE:integer;
		peso:real;
		cant:integer;
	end;
	
	arbol = ^nodo;
	
	nodo = record
		elem: infoPaquetes;
		HI:arbol;
		HD:arbol;
	end;
	
	lista = ^nodo2;
	
	nodo2 = record
		elem:infoPaquetes;
		sig:lista;
	end;
	
procedure leer(var p:paquetes);
begin
	writeln('Ingrese el codigo del paquete');
	readln(p.cod);
	if(p.cod<>0) then begin
		writeln('Ingrese el dni del emisor');
		readln(p.dniE);
		writeln('Ingrese el dni del receptor');
		readln(p.dniR);
		writeln('Ingrese la cantidad de objetos del paquete');
		readln(p.cantObjetos);
		writeln('Ingrese el peso del paquete');
		readln(p.peso);
	end;
end;

procedure agregarArbol(var a:arbol; i:infoPaquetes);
begin
	if (a=nil) then begin
		new(a);
		a^.HI:=nil;
		a^.HD:=nil;
		a^.elem.dniE:=i.dniE;
		a^.elem.cant:=1;
		a^.elem.peso:=i.peso;
	end
	else
	if(a^.elem.dniE=i.dniE) then begin
		a^.elem.peso+=i.peso;
		a^.elem.cant+=1;
	end
	else
	if (a^.elem.dniE< i.dniE) then
		agregarArbol(a^.HD,i)
	else
		agregarArbol(a^.HI,i);
end;

procedure cargarArbol(var a:arbol);
var
	p:paquetes;
	i:infoPaquetes;
begin
	leer(p);
	while(p.cod<>0) do begin
		i.dniE:=p.dniE;
		i.peso:=p.peso;
		i.cant:=0;
		agregarArbol(a,i);
		leer(p);
	end;
end;

procedure agregarOrdenado(var l:lista; i:infoPaquetes);
var
	nue,act,ant:lista;
begin
	new(nue);
	nue^.elem:=i;
	act:=l;
	ant:=l;
	while(act<>nil) and (act^.elem.dniE<i.dniE) do begin
		ant:=act;
		act:=act^.sig;
	end;
	if(act=ant) then
		l:=nue
	else
		ant^.sig:=nue;
	nue^.sig:=act;
end;


procedure valorX(x:integer; a:arbol; var l:lista);
begin
	if(a<>nil) then begin
		if(a^.elem.cant<x) then
			agregarOrdenado(l,a^.elem);
		valorX(x,a^.HI,l);
		valorX(x,a^.HD,l);
	end;
end;

procedure emisorD(d:integer;a:arbol;var i:infoPaquetes;var encontrado:boolean);
begin
	if(a<>nil) then begin
		if(a^.elem.dniE=d) then begin
			i:=a^.elem;
			encontrado:=true
		end
		else if(a^.elem.dniE<d) then
			emisorD(d,a^.HD,i,encontrado)
		else
			emisorD(d,a^.HI,i,encontrado);
	end;
end;

procedure imprimirLista(l:lista);
begin
	if(l<>nil) then begin
		writeln('DNI: ',l^.elem.dniE);
		writeln('Peso: ',l^.elem.peso:2:2);
		writeln('Cantidad de paquetes: ',l^.elem.cant);
		imprimirLista(l^.sig);
	end;
end;

procedure imprimirArbol(a:arbol;padre:integer);
begin
	if(a<>nil) then begin
		writeln('Hoja: con dni: ',a^.elem.dniE,' Padre: con dni: ',padre);
		imprimirArbol(a^.HI,a^.elem.dniE);
		imprimirArbol(a^.HD,a^.elem.dniE);
	end;
end;

var
	a:arbol;
	l:lista;
	i:infoPaquetes;
	x,dni:integer;
	encontrado:boolean;
begin
	//Inciso a
	a:=nil;
	cargarArbol(a);
	writeln('Arbol impreso con el dni del emisor del paquete');
	imprimirArbol(a,0);
	//Inciso b
	writeln('Ingrese un numero para ver la informacion de emisores con menos de x paquetes enviados');
	readln(x);
	l:=nil;
	valorX(x,a,l);
	writeln('Lista con la informacion de emisores con cantidad de paquetes enviados menor que x');
	imprimirLista(l);
	//inciso c
	writeln('Ingrese el dni de un emisor para ver su informacion');
	readln(dni);
	encontrado:=false;
	emisorD(dni,a,i,encontrado);
	if(encontrado)then begin
		writeln('Informacion del emisor con dni: ', dni);
		writeln('DNI del emisor ',i.dniE);
		writeln('Peso total ',i.peso:2:2);
		writeln('Cantidad de paquetes enviados ',i.cant); 
	end
	else
		writeln('Emisor con dni: ', dni, ' no existente');
end.
	

