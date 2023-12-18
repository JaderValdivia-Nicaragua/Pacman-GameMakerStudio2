/// @description Colisión entre enemigo y pared
//Cuando el enemigo colisione con una pared selecciona una nueva dirección

hspeed=-hspeed; /*Se invierte la dirección horizontal del sprite enemigo 
				ejemplo: izquierda->derecha o arriba->abajo (así sucesivamente)*/

vspeed=-vspeed;

//Actuar de manera aleatoria
if place_snapped(64,64) /*verificamos cada vez que el enemigo esté posicionado en una división 64*64 
en otras palabras si está alineado correctamente entre los bloques*/
{
	
	if hspeed==0 //si la velocidad horizontal es 0 (si el se está moviendo de arriba hacia abajo derecha)
	{
		// "lanzamos el primer dado" (izquierda)
		if random(3) <1 && place_free(x-1,y) /*nos da un valor decimal random desde 1 a 3 y comprobamos
		que no haya un espacio libre hacia la izquierda*/
		{
			hspeed=-v; //velocidad horizontal pasa a negativo (-4) para ir hacia la izquierda
			vspeed=0; //velocidad horizontal se igual a 0 para que en este caso no nos vamos diagonalmente (x,y)
		}
		
		// "lanzamos otra vez el dado" (derecha)
		if random(3) <1 && place_free(x+1,y) /*nos da un valor decimal random desde 1 a 3 y comprobamos
		que no haya un espacio libre hacia la derecha*/
		{
			hspeed=v; //velocidad horizontal pasa a positivo (+4) para ir hacia la derecha
			vspeed=0; //velocidad horizontal se igual a 0 para que en este caso no nos vamos diagonalmente (x,y)
		}
	}
	else //si el personaje se está moviendo horizontalmente
	{
		
		if random(3) <1 && place_free(x,y-1) //Lanzamos el primer dado y si tenemos un espacio libre arriba
		{
			vspeed=-v;//La velocidad vertical se pone a negativo (-4) para ir subiendo
			hspeed=0; 
		}
		if random(3) <1 && place_free(x,y+1) //Lanzamos otra vez el  dado y si tenemos un espacio libre abajo
		{
			vspeed=v; //La velocidad vertical se pone a positivo (4) para ir bajando
			hspeed=0;
		}
	}
}
