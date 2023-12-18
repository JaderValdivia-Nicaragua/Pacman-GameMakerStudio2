/// @description Configuración del sprite enemigo 
randomize();//el recorrido inicial de los enemigos cambian aleatoriamente al iniciar
sprite_index= spr_enemy; //sprite actual
image_speed=0;//velocidad de animación

//Iniciar movimiento aleatorio del enemigo
v=4;
direction=choose(0,90,180,270); //Se escoge una dirección aleatoria del enemigo
motion_set(direction,v); //Le damos movimiento al objeto con la dirección escogida previamente