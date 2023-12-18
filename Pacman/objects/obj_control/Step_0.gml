/// @description Controlar TODO el nivel

#region //Activar los enemigos nuevamente
if(!audio_is_playing(snd_intro))//si la canción del intro no está sonando (ya acabó)
{
	//Activamos al objeto enemigo para que se empiecen a mover
	instance_activate_object(obj_enemy);
}
#endregion

#region //Destruir todo cuando muere el jugador
if (global.Vidas==0)
{
	with(obj_enemy)//El objeto enemigo
	{
		instance_destroy(); //se destruye
	};
	
	with(obj_player)//El objeto jugador
	{
		instance_destroy();//se destruye
	};
	
	with(obj_point)// El objeto punto
	{
		instance_destroy();//Se destruye
	};
	
	with(obj_powerpoint)//El objeto punto de poder
	{
		instance_destroy();//Se destruye
	};
	with(obj_bono)//El objeto bono
	{
		instance_destroy();//se destruye
	};
} 
#endregion

//Verififcar si el nivel está completado o si el jugador ha muerto
/*Si el número de puntos de comida y el número de puntos de poderes 
son cero y la cantidad de vidas no es igual a cero quiere decir
que se completó el nivel*/
if(instance_number(obj_point)==0 and instance_number(obj_powerpoint)==0 and global.Vidas!=0)
{
	if (room_next(room) != -1) //Si el siguiente nivel NO existe (si existe el número es positivo)
	{
		audio_stop_all();//Se apagan todos los audios
		room_goto_next();//Se dirige al siguiente nivel
	
	}
	else //Si el siguiente nivel no existe
	{	
		audio_stop_all();//Se apagan todos los audios
		room_goto(rm_gameover) //Se dirige al nivel GameOver (pantalla FINAL)
		instance_destroy();//2Se destruye la instancia actual
	}
}