///@description Movimientos y Sprite

 /*si el golpe está activo o si está sonando la canción del intro 
 se termina la ejecución momentánea de toda esta sección de código*/
if( global.Golpe) or audio_is_playing(snd_intro) exit; 

//Movimiento del personaje 
if keyboard_check(vk_right) and place_free(x+1,y) and place_snapped(32,32)
/*si se presiona la tecla derecha y un pixel más a la derecha está libre y si el personaje está 
completamente posicionado en una malla de 32*32 (todo esto para hacer más preciso el momento de doblar
cuando hayan dos bloques)*/
{
	
	direction=0; /*se dirige a la dirección cero (en grados es derecha=0, arriba=90, izquierda=180, abajo=270)*/
	speed=v; //la velocidad será igual a la variable v (se mide en pixeles * paso)
}

if keyboard_check(vk_up) and place_free(x,y-1) and place_snapped(32,32) //si se presiona la tecla arriba*
{
	direction=90; //se dirige a la dirección 90 (arriba) 
	speed=v; 
}

if keyboard_check(vk_left) and place_free(x-1,y) and place_snapped(32,32)//si se presiona la tecla izquierda*
{
	direction=180; //se dirige a la dirección 180 (izquieda) 
	speed=v; 
}
if keyboard_check(vk_down) and place_free(x,y+1) and place_snapped(32,32) //si se presiona la tecla abajo*
{
	direction=270; //se dirige a la dirección 270 (abajo) 
	speed=v; 
}

//verificar dirección y velocidad para cambiar el sprite
if speed>0 //si la velocidad de nuestro sprite NO está detenido
{
	image_speed=1; //la velocidad de la imagen siempre será 1
}

else //sino (si nuestra sprite está detenido)
{
	image_speed=0; //velocidad igual a 0
	image_index=0;  //frame igual a 0
}

//Menú para cambiar el sprite de acuerdo a la dirección del sprite principal
switch(direction)
{
	case 0: //derecha
		sprite_index= spr_player_right; //se cambia el sprite princial
		break;

	case 90: //arriba
		sprite_index= spr_player_up;
		break;
		
	case 180: //izquierda
		sprite_index= spr_player_left;
		break;
		
	case 270: //abajo
		sprite_index= spr_player_down;
		break;
}