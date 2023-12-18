///@description Obtener el poder de intimidación   
//Nombre del sonido, Prioridad del sonido (mientras mayor sea el valor más prioridad tendrá),boolean;
audio_play_sound(snd_power,10,false)

alarm[0] =room_speed*5; /*se activa una alarma en 5 segundos*/

global.Puntos+=10; //Sumamos 10 puntos más
global.Power=true; //activamos el swtich del poder para identificar que fue tomado

with (obj_enemy) //con el objeto enemigo haremos lo siguiente
{
	sprite_index= spr_enemy_scared; //el indice del sprite se convierte en el enemigo asustado
	image_speed=0; //la velocidad de la animación se pasa a 0
	image_index=0;//ponemos el frame 0 (el único que existe para este caso) como indice de imagen actual
	
	v=2; //la velocidad del objeto enemigo se reduce a la mitad de lo normal
};

with(other)
{
	instance_destroy();
}

