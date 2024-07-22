function clearTextBoxOnClick(textBox) {
    if (textBox.value != '') {
        textBox.value = '';
        textBox.style.color = 'black';
    }
}

function usernameHeader() {

    nombreUsuarioHeader = document.querySelector("header #usuario");

    nombreUsuarioHeader.InnerText = "Bienvenido!";
}
