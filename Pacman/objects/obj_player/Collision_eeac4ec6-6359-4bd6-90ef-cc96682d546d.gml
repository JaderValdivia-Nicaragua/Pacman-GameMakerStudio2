///@description Obtener el punto contador  
global.Puntos+=10; //iremos sumando de 10 en 10

//Nombre del sonido, Prioridad del sonido (mientras mayor sea el valor más prioridad tendrá),boolean;
audio_play_sound(snd_comiendo,10,false)
with(other) //al otro objeto con el que está colisionando (obj_point)
{
	instance_destroy(); //destruimos la instancia (el objeto) 
}