/*
+ ia_grid: es una variable la cual toma la función "mp_grid_create" que es la encargada de crear una rejilla
en nuestro cuarto. Tenemos que dividir room_width(ancho de la habitación) por 32(tamaño del sprite), 
al igual que con el alto: room_height(alto de la habitación) por 32(tamaño del sprite). Las opciones finales 
son el ancho y alto de los cuadros creados; el objeto tiene que poder moverse libremente así que denle el espacio necesario. 
(Las medidas están probadas en una room de 640x480. Adaptenlo a su necesidad).

+ ia_path: es otra variable que toma el valor de "path_add" que es la encargada de proyectar el camino a través
de los cuadros creados en la rejilla anterior. 
+ mp_grid_path: es el encargado de relacionar ia_grid con ia_path. 
A esto le sumaremos que después de declarar los elementos para proyectar el camino debemos decirle cuál sera el punto de partida 
y el de llegada. 
La parte final la cual dice TRUE es para permitir movimientos diagonales, si está dentro de su plan diría que lo activen. 
+ path_start: finalmente daremos comienzo al movimiento usando esta función la cual tomara la variable "ia_path" y la proyectara
dándole la velocidad que queramos. La opción "endaction" verifica que hacer luego de terminar el trayecto, tenemos varias opciones: 
0-Parar el recorrido, 1-Comenzarlo de nuevo, 2-Continuar desde la posición, 3-Hacer el camino a la inversa. 
*/

ia_grid = mp_grid_create(0,0,room_width/64,room_height/64,64,64); 
ia_path = path_add(); 
punto_de_salida_x=obj_enemy.x;
punto_de_salida_y=obj_enemy.y;
punto_de_llegada_x=obj_player.x;
punto_de_llegada_y=obj_player.y;

endaction=2;
preciso=false;

mp_grid_path(ia_grid,ia_path,punto_de_salida_x, punto_de_salida_y,punto_de_llegada_x,punto_de_llegada_y,true); 
path_start(ia_path,velocidad,endaction,preciso); 