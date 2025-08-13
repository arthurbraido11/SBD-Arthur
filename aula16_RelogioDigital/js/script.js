function atualizaHora(){
    const hora= document.querySelector("#hora")
    const minutos= document.querySelector("#minutos")
    const segundos= document.querySelector("#segundos")

    const agora = new Date()

    hora.textContent = agora.getHours().toString;
    minutos.textContent = agora.getMinutes().toString;
    segundos.textContent = agora.getSeconds().toString;

}

setInterval(atualizaHora,1000);