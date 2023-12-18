///@description Cuando el poder se esté acabando 
global.Power=false;
with(obj_enemy) //con los objetos enemigos
{
	if sprite_index==spr_enemy_scared /*cambiaran su sprite a asustados*/
	image_speed=1; //la velocidad de animación se asigna a 1
}

alarm[1] =room_speed*3; /*después de que la primera alarma 
						se active se activará esta nueva alarma de 3 segundos*/