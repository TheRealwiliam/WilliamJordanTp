<html>
    <head>
        <meta chraset="utf-8">
</head>
<body>
    <h1> Affichage des donnees saisies</h1>
    <ul>
<?php
    $a=$_REQUEST['t1'];
    $b=$_REQUEST['t2'];
    
    if ($a == "admin" and $b == "admin")
    {
       echo "Bienvenue M.'$a :Votre mot de passe est valide ".".<br/>";
       echo "Vous etes connecté depui le " .date("d/m/y")."<br/>";
       echo "Il est ".date("M:i:s")."!";
    }
    else
    echo 'Mot de passe Invalide:';
    
   
?>
<Input type=button value = 'retour'onclick = "self.history.back();">
</body>
</html>