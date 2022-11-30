function calcul_moyenne()
{
    var note1= prompt("donner la première note:");
    var coeff1= prompt("donner le coeff de la note1:");
    var note2= prompt("donner la deuxième note:");
    var coeff2= prompt("donner le coeff de la note2:");
    var note3= prompt("donner la troisième note:");
    var coeff3= prompt("donner le coeff de la note3:");
    

    var somme= Number(note1)+Number(note2)+Number(note3);
    var somme_coeff= coeff1+coeff2+coeff3;


    document.write ("Voici la somme:"+ somme + "<br>");
    var moyenne= somme/somme_coeff;

    document.write("Voici la moyenne:"+ moyenne +"<br>");

    if (moyenne<10){
        document.write("Vous etes redoublant");
        document.bgColor="red";
    }
    else{
        document.write("Vous etes admis");
        document.bgColor="green";
    }
        document.write("<td> voila la somme: "+ somme +"</td>");
        document.write("<td> voila votre moyenne: "+ moyenne + "</td>");

}

function test_age()
{
    var age= prompt("donnez votre age");
    if (age<18)
    {
        document.write("vous etes mineur");
        document.bgColor= "red";
    }
    else
    {
        document.write("vous etes majeur");
        document.bgColor="green";
    }
}

function simple_affichage() 
{
    console.log('ghe')
    var nom_prompt=("donner votre nom")
    var nom_prompt =("donner votre prénom")

    document.write("<div style='margin:auto; width:300px; border:2px solid blue;'>");
    document.write("Bonjour " +prenom+" "+nom);
    document.write("</div");
}

function test_couleur()
{
    var c=prompt("Donner une couleur")
    if (c=="rouge"||c=="Rouge" ||c=="R")
    document.body.style.background="red"
}

function somme()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) + Number(b);

    t3.value = c
}

function soustraction()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) - Number(b);

    t3.value = c
}

function division()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) / Number(b);

    t3.value = c
}

function multiplication()
{
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) * Number(b);

    t3.value = c
}

function parité()
{
    var v = Number(document.getElementById("t1").value);
    if (v%2 == 0)

    alert("Ce nombre est pair");
else
    alert("Ce nombre est impair");
}

function permuter()
{
    var V3= "";
    a =document.getElementById(t1).value;
    b =document.getElementById(t1).value;
    V3=a;
    a=b;
    b=V3;


    t1.value = a;
    t2.value = b;
}

    



