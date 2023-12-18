///@description Golpe Atacar 

if(other.sprite_index==spr_enemy_scared) //si el objeto jugador choca con el enemigo asustado
{
	global.Puntos+=200; //Se suman 200 puntos 
	
	//Nombre del sonido, Prioridad del sonido (mientras mayor sea el valor más prioridad tendrá),boolean;
	audio_play_sound(snd_enemy_kill,10,false)
	
	with(other) //el objeto enmemigo
	{
		x=xstart; //regresa a su posición inicial en X
		y=ystart;//regresa a su posición inicial en Y 
		v=4; //La velocidad del objeto enemigo se establece a 4
		speed=v;//le pasamos el valor
		sprite_index=spr_enemy; //Regresamos al sprite normal del enemigo
		image_index=col; //le asignamos su color por defecto
		image_speed=0;//La velocidad de la animación de sus frames se vuelve a 0
	}
}

else /*Si el objeto powerpoint no está activo*/

/*Si hubo un golpe o si la posición en x o y es del jugador y enemigo son iguales*/
if !(global.Golpe and (x=other.x or y=other.y)) //Para que los choques sean precisos
{
	audio_stop_all();//Detener todos los sonidos
	//Nombre del sonido, Prioridad del sonido (mientras mayor sea el valor más prioridad tendrá),boolean;
	audio_play_sound(snd_dead,10,false)


	room_speed=50;//La velocidad del nivel se reinicia a 50 (valor por defecto)
	obj_control.alarm[1]=room_speed*15;//Se esperan los 15 segundos otra vez para ponerlo más rápido

	speed=0; //la velocidad se reinicia a 0 (ya que es destruido)
	global.Vidas-=1;//se resta una vida
	sprite_index= spr_player_dead;//se cambia el sprite actual por el sprite muerto
	image_speed=1; //la animación de la trama es 1
	global.Golpe=true; /*se enciende la variable golpe para que esta condición no
						se repita seguidamente*/

	with(obj_enemy)  //con el objeto enemigo
	{
		image_speed=0; //se le pone una velocidad de animación de 0
		sprite_index=spr_enemy; //se cambia el sprite indice por el del enemigo
		image_index=col;//se establece su color predeterminado
		speed=4; //Se devuelve a su velocidad normal
		v=4;//la variable de velocidad regresa a su valor normal
	}

	with(obj_bono) //Con el objeto bono
	{
		instance_destroy(); //Se destruye el objeto bono
	}
}
