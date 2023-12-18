///@description Inteligencia Artifical

//Reiniciar el enemigo desde cero cuando el jugador pierde una vida
if(global.Golpe) //si el jugador recibe un golpe
{
	speed=0; //velocidad en general
	hspeed=0;//velocidad horizontal
	vspeed=0;//velocidad en vertical
	visible=false; //ocultamos los sprites enemigo
	
	x=xstart;//posición inicial en X
	y=ystart;//posición inicial en Y
	exit;  
}

else
{
	visible=true; //mostramos los sprites enemigo 	
}


#region
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
			
			//A_estrella();
		}
		
		// "lanzamos otra vez el dado" (derecha)
		if random(3) <1 && place_free(x+1,y) /*nos da un valor decimal random desde 1 a 3 y comprobamos
		que no haya un espacio libre hacia la derecha*/
		{
			hspeed=v; //velocidad horizontal pasa a positivo (+4) para ir hacia la derecha
			vspeed=0; //velocidad horizontal se igual a 0 para que en este caso no nos vamos diagonalmente (x,y)
		
			//A_estrella();
		}
	}
	else //si el personaje se está moviendo horizontalmente
	{
		
		if random(3) <1 && place_free(x,y-1) //Lanzamos el primer dado y si tenemos un espacio libre arriba
		{
			vspeed=-v;//La velocidad vertical se pone a negativo (-4) para ir subiendo
			hspeed=0; 
			
			//A_estrella();
		}
		if random(3) <1 && place_free(x,y+1) //Lanzamos otra vez el  dado y si tenemos un espacio libre abajo
		{
			vspeed=v; //La velocidad vertical se pone a positivo (4) para ir bajando
			hspeed=0;
			
			//A_estrella();
		}
	}
}
#endregion
