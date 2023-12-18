///@description Terminar el poder
if(global.Power) exit; //Si el poder está activo detenemos lo que resta de este evento

/*Si no está activo*/
with(obj_enemy)  //con el objeto enemigo
{
	image_speed=0; //se le pone una velocidad de animación de 0
	sprite_index=spr_enemy; //se cambia el sprite indice por el del enemigo
	image_index=col;//se establece su color predeterminado
	speed=4; //Se devuelve a su velocidad normal
	v=4;//la variable de velocidad regresa a su valor normal
}

