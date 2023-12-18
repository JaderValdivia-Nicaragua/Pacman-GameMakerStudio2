//scr_afuera()

//A continuación se invierten los valores de la posición del sprite según la condición en el que encaje	

//si la posición del personaje es en la izquierda (afuera de la pantalla) y si va avanzando hacia la izquierda
if(x < 0 and hspeed<0) x= room_width + sprite_xoffset; //x ahora tendrá el valor de la sala + la posición del sprite 

//si la posición del personaje es en la derecha (afuera de la pantalla) y si va avanzando hacia la derecha
if(x > room_width and hspeed>0) x= -sprite_width + sprite_xoffset;

//si la posición del personaje es arriba (afuera de la pantalla) y si va avanzando hacia arriba
if(y<0 and vspeed<0) y= room_height + sprite_yoffset;

//si la posición del personaje es abajo (afuera de la pantalla) y si va avanzando hacia abajo
if(y>room_height and vspeed>0) y= -sprite_height + sprite_yoffset;
