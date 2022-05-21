<footer>
    <div id="footer1">
        <img alt="Logo de l'entreprise Nolark" src="<?= $dirIndex; ?>images/logonolark.png">
        <!-- Image basée sur la création originale de ShiftGraphiX sur Pixabay : 
            https://pixabay.com/fr/couple-stoppie-sportive-vélomoteur-3156613/ -->
        <div class="pfoot">
            <p class="sousTitre"><strong>Nous contacter</strong></p>
            <hr>
            <p>🕒 Nous répondons à vos questions
                <br>du lundi au samedi de 9h à 19h</p>
            <p>Pour nous joindre
                <br><span>📞</span> <a href="tel:+33412345678">04 12 34 56 78</a>
                <br><span>＠</span> <a href="<?= $dirIndex; ?>pages/nous-contacter.php#contact">Par email</a>
            </p>
        </div>
        <div class="pfoot">
            <p class="sousTitre"><strong>À propos de Nolark</strong></p>
            <hr>
            <p>📍 <a href="<?= $dirIndex; ?>pages/nous-contacter.php">Nous trouver</a></p>
            <p>📑 <a href="<?= $dirIndex; ?>pages/cgu.php">Consulter nos C.G.U. <br>(conditions générales d'utilisation)</a></p>
            <div id="logosrs">
                <a href="https://twitter.com/Casques_Nolark" target="_blank"><img src="<?= $dirIndex; ?>images/freepik/008-twitter.svg" alt="Logo de Twitter" title="Suivez nous sur Twitter"></a>
                <a href="https://www.facebook.com/Casques.Nolark" target="_blank"><img src="<?= $dirIndex; ?>images/freepik/036-facebook.svg" alt="Logo de Facebook" title="Suivez nous sur Facebook"></a>
                <a href="https://www.instagram.com/casquesnolark/" target="_blank"><img src="<?= $dirIndex; ?>images/freepik/029-instagram.svg" alt="Logo de Instagram" title="Suivez nous sur Instagram"></a>
                <a href="https://www.linkedin.com/company/nolark" target="_blank"><img src="<?= $dirIndex; ?>images/freepik/027-linkedin.svg" alt="Logo de LinkedIn" title="Suivez nous sur LinkedIn"></a>
                <a href="https://www.snapchat.com/add/casquesnolark" target="_blank"><img id="logosnapchat" src="<?= $dirIndex; ?>images/freepik/014-snapchat.svg" alt="Logo de Snapchat" title="Suivez nous sur Snapchat"></a>
            </div>
        </div>
    </div>
    <hr>
    <div id="footer2">
        <?php
        setlocale(LC_ALL, 'fr-FR.utf8', 'fra');
        date_default_timezone_set('Europe/Paris');
        ?>
        <p>&copy; 2011-<?= strftime("%Y"); ?> Nolark - Créé par <a href="<?= $dirIndex; ?>pages/mailto.redirect.php">José GIL</a> - Tous droits réservés</p>
    </div>
    <div id="attribution">Icônes de réseaux sociaux conçues par <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> de <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
</footer>