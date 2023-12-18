/// @description Destruir en el Intro

if(audio_is_playing(snd_intro)) //si está sonando el sonido de introducción
{
	instance_destroy();	 //se destruye el objeto bono
}
