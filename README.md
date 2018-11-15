# Giroscopio
El giroscopio del dispositivo es normalmente usado para identificar cuánto se rota el dispositivo y así realizar acciones como girar imágenes, pantallas, entre otros.  En este proyecto debes crear una aplicación iOS donde uses el giroscopio del dispositivo para mover una imagen según la rotación de los ejes horizontales y para girarla según la rotación del eje vertical.  Instrucciones  Crear un nuevo proyecto para iOS de tipo SingleViewApplication llamado gyro.  Crear un imageView en la escena principal con cualquier imagen que desees. Darle constraints para que la imagen esté centrada en la pantalla.  Crear un singleton que maneje una instancia de CMMotionManager e incluya métodos para activar el giroscopio.  Activar el giroscopio en el viewDidLoad y, cada vez que reciba dato, se debe actualizar el movimiento de la vista con respecto a estos datos, usando un CGAffineTransform.  Usar la rotación en el eje Z para girar la imagen, la rotación en el eje Y y el eje X se deben usar para mover la imagen por la pantalla.


TEN EN CUENTA:

Para mover y girar la imagen vas a necesitar hacer dos transformaciones. Los métodos de CGAffineTransform se pueden encadenar al inicializador, por lo que se puede hacer algo así: CGAffineTransform(translationX: ..., y: ….).rotated(by: ….), de esta forma creas una transformación donde se mueve un objeto en X y Y, y luego se rota con el método rotated y el ángulo que le pases como argumento.

También debes tener en cuenta que los ejes del giroscopio podrían tener un orden diferente al que crees. En este caso, el eje Y te puede servir para mover en el eje X y viceversa.
