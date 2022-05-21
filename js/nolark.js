function validEnvoi() {
    if (window.document.querySelector("#i_nom").value === "" &&
            window.document.querySelector("#i_prenom").value === "") {
        alert("Le nom ou le prénom doivent être remplis"); // On affiche un message
    } else if (window.document.querySelector("#i_email").value === "") {
        alert("L'email doit être rempli"); // On affiche un message
    } else {
        let question = "Souhaitez-vous réellement utiliser l'adresse suivante : "
                + window.document.querySelector("#i_email").value;
        if (confirm(question)) {
            window.document.querySelector("#form_contact").submit(); // OK envoyer
        }
    }
}

window.addEventListener("load", function () {
    // Message de Log
    console.log('Message de log');
    // Message d'avertissemet
    console.warn('Message d\'avertissement !');
    // Message d'erreur
    console.error('Message d\'erreur !!!');
    let maVar = 10;
    maVar = maVar + 10;
    // debugger; // Met en pause l'exécution et ouvre le debugger
    window.document.querySelector("#btn_envoyer").addEventListener("click", validEnvoi);
    testlol();
});

// Provocation d'erreur
window.document.querySelector("#elHTMLId").value = "Nouvelle valeur";

function testlol() {
    console.log('pouet');
}