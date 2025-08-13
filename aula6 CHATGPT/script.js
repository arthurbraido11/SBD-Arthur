function calcularNota() {
    // Obter os valores dos campos
    const nome = document.getElementById('nome').value;
    const nota1 = parseFloat(document.getElementById('nota1').value);
    const nota2 = parseFloat(document.getElementById('nota2').value);
    const nota3 = parseFloat(document.getElementById('nota3').value);

    // Validar se as notas são válidas
    if (isNaN(nota1) || isNaN(nota2) || isNaN(nota3) || nome === "") {
        alert("Por favor, preencha todos os campos corretamente.");
        return;
    }

    // Calcular a média
    const media = (nota1 + nota2 + nota3) / 3;

    // Exibir o resultado
    const resultado = document.getElementById('resultado');
    resultado.innerHTML = `${nome}, sua nota final é: <strong>${media.toFixed(2)}</strong>`;

    // Alterar a cor do resultado com base na média
    if (media >= 6) {
        resultado.style.color = 'green';
    } else {
        resultado.style.color = 'red';
    }
}
