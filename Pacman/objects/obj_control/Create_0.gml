/// @description Crear variables del juego

audio_play_sound(snd_intro,10,false);
//desactivar los objetos del enemigo cuando se crea en este nivel 
instance_deactivate_object(obj_enemy)
global.Puntos=0; //contador de puntos
global.Vidas=3; //contador de vida
global.Power=false; //interruptor para detectar cuando se agarre el poder de terror
global.Bonos=false; //interruptor para detectar cuando se agarre el bono
global.Golpe=false; 

alarm[0]=room_speed*10; //la alarma dura 10 segundos (el bono se activa al pasar 10 seg)
alarm[1]=room_speed*15; //Ir más rápido cada 15 segundos