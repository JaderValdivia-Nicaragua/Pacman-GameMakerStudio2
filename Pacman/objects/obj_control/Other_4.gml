/// @description El nivel empiece de nuevo
if room == rm_level_1 exit;

audio_play_sound(snd_intro,10,false);
instance_deactivate_object(obj_enemy);

global.Golpe=false; //Se apaga el interruptor golpe
global.Power=false; //Se apaga el poder
global.Bonos=false; //Se apaga el bono

alarm[0] = room_speed*10; //La alarma 0 para crear el Bono después de 10 segundos
alarm[1] = room_speed*15; //La alarma 1 se activa al pasar 15 segundos
room_speed=50; //La velocidad del juego regresa a su valor por defecto 