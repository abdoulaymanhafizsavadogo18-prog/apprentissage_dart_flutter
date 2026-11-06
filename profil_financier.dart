void main() {
    String nom ="Amadou";
    int revenus = 8500;
    double depenses =3200.75;
    bool depassement = depenses > revenus;

    //calcul du solde
    final solde = revenus - depenses;

    if (depassement){
        print("revenus insuffisant");}
        
    else{
        print("pas de soucis");

    }
       

    //Affichage
    print("utilisateur : $nom");
    print("revenus : $revenus MAD");
    print("depenses : $depenses MAD");
    print("solde : $solde MAD");
    print(depassement);
}