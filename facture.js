function Calculer()
{
    var a = document.getElementById("inputA").value;
    var b = document.getElementById("inputB").value;
    var c = Number(a) * Number(b);

    T1.value = c;

    var d = document.getElementById("inputC").value;
    var e = document.getElementById("inputD").value;
    var f = Number(e) * Number(d);

    T2.value = f;

    var h = document.getElementById("inputE").value;
    var i = document.getElementById("inputF").value;
    var j = Number(h) * Number(i);

    T3.value = j;

    var k = document.getElementById("inputG").value;
    var l = document.getElementById("inputH").value;
    var m = Number(k) * Number(l);

    T4.value = m;

    var S_T = Number(c) + Number(f) + Number(j) + Number(m);
    ST.value = S_T

    TI.value = 10.00

    
    var TT = S_T * 10 / 100
    Tt.value = TT

    Re.value = 10.00

    var soustotal_remise = S_T - TT
    STM.value = soustotal_remise

    var Exp_Manu = 5.0
    E_M.value = Exp_Manu

    var Solde_total = S_T + Exp_Manu
    SOL.value = Solde_total

}

function Remplir()
{
    const tabDesc = new Array("portable", "burreau", "ram 8go", "clef usb 16go", "sourris" , "écran 17 pouces");
    var listeprix = document.getElementsByClassName("prix");
    var listeQte = document.getElementsByClassName("Qte");
        var listeDesc = document.getElementsByClassName("desc");

    for (var i=0; i< listeDesc.length;i++){

        var idesc= Math.floor(tabDesc.length* Math.random());
        
        listeDesc[i].value = tabDesc[idesc];
        var Qte = Math.floor(10 * Math.random()+1);
        listeQte[i].value = qte;
        var prix = Math.floor(100 * Math.random()+1);
        listeprix[i].value = prix;
    }
}
function Ajouter_ligne(){
    var newli = document.getElementById("modeleLigne").cloneNode(true)
    var lastLi = document.getElementById("lastLigne");
    var pere = document.getElementById("table_inv").firstChild.nextSibling;
    pere.insertBefore(newli, lastLi);
}


function calculate(){
    var total = 0;

    var listeprix = document.getElementsByClassName("prix");
    var listeQte = document.getElementsByClassName("Qte");
    var listeTtl = document.getElementsByClassName("totalLigne");

for(var i=0; i< listeprix.length;i++){
    listeTtl[i].value = parseInt(listeQte[i].value)*parseInt(listeprix[i].value);
    total = total + parseInt(listeTtl[i].value);
}
}



