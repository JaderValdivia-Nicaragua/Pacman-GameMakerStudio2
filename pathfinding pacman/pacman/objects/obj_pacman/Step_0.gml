/// @description Movimientos Pacman

if keyboard_check(vk_right)
{
	direction=0;
	speed=v;
}

if keyboard_check(vk_left)
{
	direction=180;
	speed=v;
}


if keyboard_check(vk_up)
{
	direction=90;
	speed=v;
}


if keyboard_check(vk_down)
{
	direction=270;
	speed=v;
}

/// @description Algoritmo A Estrella (IA)

/*
+ ia_grid: es una variable la cual toma la función "mp_grid_create" que es la encargada de crear una rejilla en nuestro cuarto. 
Tenemos que dividir room_width(ancho de la habitación) por 32(tamaño del sprite), al igual que con el alto:
room_height(alto de la habitación) por 32(tamaño del sprite).
Las opciones finales son el ancho y alto de los cuadros creados; el objeto tiene que poder moverse libremente 
así que denle el espacio necesario. (Las medidas están probadas en una room de 640x480. Adaptenlo a su necesidad) 

+ ia_path: es otra variable que toma el valor de "path_add" que es la encargada de proyectar el camino a través de los 
cuadros creados en la rejilla anterior. 

+ mp_grid_path: es el encargado de relacionar ia_grid con ia_path. A esto le sumaremos que después de declarar los elementos 
para proyectar el camino debemos decirle cuál sera el punto de partida y el de llegada. La parte final la cual dice TRUE es
para permitir movimientos diagonales, si está dentro de su plan diría que lo activen. 

+ path_start: finalmente daremos comienzo al movimiento usando esta función la cual tomara la variable "ia_path" y la proyectara 
dándole la velocidad que queramos. La opción "endaction" verifica que hacer luego de terminar el trayecto, 
tenemos varias opciones
: 0-Parar el recorrido, 1-Comenzarlo de nuevo, 2-Continuar desde la posición,3-Hacer el camino a la inversa. */


with(obj_fantasma)
{
	ia_grid = mp_grid_create(0,0,room_width/64,room_height/64,64,64); 
	ia_path = path_add(); 
	velocidad=4; //velocidad o paso de recorrido
	endaction=0; //acción después de terminar el recorrido (continua haciéndolo)
	preciso=false;

	mp_grid_path(ia_grid,ia_path,obj_fantasma.x, obj_fantasma.y ,obj_pacman.x,obj_pacman.y,false); 
	path_start(ia_path,velocidad,endaction,preciso); 
	
}