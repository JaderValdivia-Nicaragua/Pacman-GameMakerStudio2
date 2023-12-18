/// @description Dibujar puntos, mensaje y vidas

#region//Dibujar SCORE
draw_set_color(c_white); //Configurar color de dibujo
draw_set_halign(fa_left);//Aliniar el texto horizontalmente a la izquiera 
draw_set_valign(fa_top);//Aliniar el texto verticalmente a la derecha
draw_set_font(fnt_texto);
draw_text(32,16,"SCORE: "+string(global.Puntos));//Dibujar Texto
#endregion

#region //Dibujar VIDAS
draw_text(room_width/2,16,"VIDAS: "); //Se comienza a dibujar desde la mitad de la pantalla en X
for(var i=0;i<global.Vidas;i+=1) //Se dibujan de cero a la cantidad de vidas
{
	//Dibujaremos al jugador con su frame 2 después del texto "VIDAS"
	//Para esto se establece que los sprite tendrán 32*32 de tamaño al ser dibujado + 1px de espacio
	draw_sprite_stretched(spr_player_right,2,room_width/2+string_width("VIDAS: ")+(i*33),16,32,32);
}
#endregion

#region //dibujar READY!
if(audio_is_playing(snd_intro))//si el sonido intro está sonando
{
	draw_set_color(c_yellow);//se configura el color de dibujo a amarillo
	draw_set_halign(fa_center);//su posición horizontal es en el centro
	draw_set_valign(fa_top);//su posición vertical es en el centro
	draw_set_font(fnt_ready);//Se imprime el texto fnt_ready
	
	//El texto se pone un poco después de la mitad del mapa (sala)
	draw_text(room_width/2+128,room_height/2+8,"Ready!");
}
#endregion

#region //Bonus Manzana
if(global.Bonos) //Si se activa el Bonus(manzana)
{
	//Se dibuja el bono 64 px antes del final de la sala en X
	draw_sprite(spr_bonus,0,room_width-64,0)
}
#endregion

#region //Dibujar GAMEOVER
if(global.Vidas==0)//Si ya no hay vidas
{
	draw_set_color(c_red);//Configurar color de texto a Rojo
	draw_set_halign(fa_center);//Se alinea horizontalmente en el centro
	draw_set_valign(fa_top);//Se alinea verticalmente en la parte superior
	draw_set_font(fnt_ready); //El tipo de fuente será el mismo que la fuente Ready
	
	//Se imprime Game Over en el centro
	draw_text(room_width/2,room_height/2, "Game Over"); 
}
#endregion