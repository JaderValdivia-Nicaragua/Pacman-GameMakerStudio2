/// @description Poner el nivel más rápido
if(room_speed>=90) exit; //Si la cantidad de pasos excede los 90 pasos ya no seguirá incrementando

room_speed+=15; //Cada vez que la alarma se active se agragará 15 pasos a la velocidad del nivel
alarm[1] =room_speed*20; //Se activa la alarma otra vez en 20 segundos