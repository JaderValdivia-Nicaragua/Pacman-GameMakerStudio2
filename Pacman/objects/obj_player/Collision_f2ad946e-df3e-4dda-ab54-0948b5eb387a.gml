/// @description Obtener un Bono

global.Puntos +=500; //Obtenemos 500 puntos extras
global.Bonos =true; //Interruptor para que el bono aparezca

audio_play_sound(snd_bono,10,false); //Se activa el sonido del bono

with(other) //Al colisionar el objeto jugador con el objeto bono
{
	instance_destroy(); //El objeto bono se destruye
}