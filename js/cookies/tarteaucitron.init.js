tarteaucitron.init({
    "privacyUrl": "/pages/cgu.php#confidentialite", /* Privacy policy url */

    "hashtag": "#tarteaucitron", /* Open the panel with this hashtag */
    "cookieName": "tarteaucitron", /* Cookie name */

    "orientation": "middle", /* Banner position (top - bottom) */
    "showAlertSmall": true, /* Show the small banner on bottom right */
    "cookieslist": true, /* Show the cookie list */

    "adblocker": false, /* Show a Warning if an adblocker is detected */
    "AcceptAllCta": true, /* Show the accept all button when highPrivacy on */
    "highPrivacy": true, /* Disable auto consent */
    "handleBrowserDNTRequest": false, /* If Do Not Track == 1, disallow all */

    "removeCredit": false, /* Remove credit link */
    "moreInfoLink": true, /* Show more info link */
    "useExternalCss": false, /* If false, the tarteaucitron.css file will be loaded */

    //"cookieDomain": ".my-multisite-domaine.fr", /* Shared cookie for multisite */

    "readmoreLink": "/pages/cgu.php#gestionDesCookies", /* Change the default readmore link */

    "mandatory": false, /* Show a message about mandatory cookies */
});
tarteaucitron.user.gtagUa = 'UA-172024805-1';
(tarteaucitron.job = tarteaucitron.job || []).push('gtag');
(tarteaucitron.job = tarteaucitron.job || []).push('dailymotion');