/// @description Crear Bono
if(global.Vidas==0) exit;//Cuando se queda sin vidas termina de ejectuarse el resto del código

instance_create_layer(obj_player.xstart,obj_player.ystart,"ly_top",obj_bono);
alarm[0]= room_speed*30; //Cada 30 segundos se activará el bono