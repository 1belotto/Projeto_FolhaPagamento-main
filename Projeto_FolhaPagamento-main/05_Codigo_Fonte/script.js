const formulario = document.querySelector("form");
const InputNome = document.querySelector(".nome");
const InputEmail = document.querySelector(".email");
const InputSenha = document.querySelector(".senha");
const InputTel = document.querySelector(".tel");

function cadastrar() {

    fetch("https://localhost:8080/cadastrar",  
        {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify({
            nome: InputNome.value,
            email: InputEmail.value,
            senha: InputSenha.value,
            tel: InputTel.value
            })
        })
        .then(function (res) {console.log(res) })
        .catch(function (res) {console.log(res) })
    
};

function limpar() {
    InputNome.value = "";
    InputEmail.value = "";
    InputSenha.value = "";
    InputTel.value = "";
}

formulario.addEventListener('submit', function (event){
    event.preventDefault();

    cadastrar();
    limpar();
});