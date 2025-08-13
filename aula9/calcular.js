var inputNome=document.querySelector("#nome");
var inputNota1=document.querySelector("#nota1");
var inputNota2=document.querySelector("#nota2");
var inputNota3=document.querySelector("#nota3");

function fnCalcular(){
    var estudante = inputNome.value;
    var n1= parseFloat(inputNota1.value);
    var n2= parseFloat(inputNota2.value);
    var n3= parseFloat(inputNota3.value);
    var notafinal = (n1+n2+n3)/3;
    resultado.innerHTML = "Nota Final do Estudante:"+notafinal
}
