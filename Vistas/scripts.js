document.addEventListener("DOMContentLoaded", function () {
    // Texto que deseas mostrar
    var texto = "console.log('Hola Cine!');";

    // Elemento donde mostrarás el texto tipeado
    var elemento = document.getElementById("texto-tipeado");

    // Índice del carácter actual
    var i = 0;

    // Función para mostrar el texto gradualmente
    function mostrarTexto() {
        if (i < texto.length) {
            elemento.innerHTML += texto.charAt(i);
            i++;
        } else {
            // Reiniciar el índice y vaciar el contenido
            i = 0;
            elemento.innerHTML = "";
        }
    }

    // Configurar el intervalo para repetir el efecto
    setInterval(mostrarTexto, 200); // Velocidad de tipeo en milisegundos
});
