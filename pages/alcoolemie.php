    <!DOCTYPE html>
<!-- 
     Page web créé dans le cadre du cours de web Dev le 01/09/2020
     Auteur : José GIL
     Email : jgil83000@gmail.com
-->
<html lang="fr-FR">
    <head>
        <title><strong>casques</strong> Nolark&nbsp;:&nbsp;<strong>sécurité</strong>  et confort, nos priorités !</title>
        <meta charset="UTF-8">
        <meta name="author" content="José GIL">
        <meta name="description" content="Découvrez des <strong>casques</strong> moto dépassant même les exigences des tests de <strong>sécurité</strong> . Tous les <strong>casques</strong> Nolark au meilleur prix et avec en prime la livraison gratuite !">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="../js/cookies/tarteaucitron/tarteaucitron.js"></script>
        <script src="../js/cookies/tarteaucitron.init.js"></script>
        <link href="../css/styles.css" rel="stylesheet" type="text/css">
        <link href="../css/alcoolemie.css" rel="stylesheet" type="text/css">
        <link rel="icon" href="../favicon.ico">
        <script src="../js/alcoolemie.js"></script>
    </head>
    <body>
        <?php include('../includes/header.html.inc.php'); ?>
        <section>
		<h1>Simulateur pédagogique d'alcoolémie théorique :</h1>
		<form><fieldset id="simulation"><p><label for="num_poids">Votre poids :</label>
                            <input type="number" name="num_poids" id="num_poids" min="0" max="200" value="0" /></p>
		
		<fieldset id="sexe">
    <legend>Votre sexe : </legend>
    <p><input type="radio" name="rd_sexe" value="homme" id="rd_sexehomme" checked="checked"> <label for="rd_sexehomme">Homme</label></p>
    <p><input type="radio" name="rd_sexe" value="femme" id="rd_sexefemme"> <label for="rd_sexefemme">Femme</label></p>
</fieldset>
<p><label for="num_verre">Nombre de verres bus :</label> <input type="number" name="num_verre" id="num_verre" min="0" max="25" value="0"></p>
        </fieldset></form></section>
        <?php include('../includes/footer.inc.php'); ?>
    </body>
</html>
