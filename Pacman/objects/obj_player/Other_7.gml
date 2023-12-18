///@description Verificar la animación de la muerte
if sprite_index==spr_player_dead //Si el sprite actual es el muerto
{
	direction=0; //la dirección se cambia a la derecha
	image_speed=0; //la velocidad de animación se reinicia a 0
	x=xstart; //el valor de x pasa a su valor inicial en x
	y=ystart; //el valor de y pasa a su valor inicial en y
	sprite_index=spr_player_right; //el sprite actual se cambia al sprite de la derecha
	image_index=0;//se establece el frame 0
	
	global.Golpe=false; //Limpiamos la variable del golpe

	//Iniciar NUAVEMENTE
	audio_play_sound(snd_intro,10,false);//activamos el sonido intro
	instance_deactivate_object(obj_enemy);//Desactivamos momentaneamente el mov obj_enemy
}