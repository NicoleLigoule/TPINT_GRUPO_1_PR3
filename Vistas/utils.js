function clearTextBoxOnClick(textBox) {
    if (textBox.value != '') {
        textBox.value = '';
        textBox.style.color = 'black';
    }
}