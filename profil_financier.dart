void main() {
    String nom ="Amadou";
    int revenus = 7500;
    double depenses =8200;
    bool depassement = depenses > revenus;

    //calcul du solde
    final solde = revenus - depenses;

    if (depassement){
        print("revenus insuffisant");}
        
    else{
        print("pas de soucis");

    }

    //Verification du solde

    if (solde >0){
        print("situation positive");
    }
    else if (solde ==0){
        print("equilibre financier");
    }
    else{
        print("deficit financier");
    }

    //verification du catégorie

    String categorie ="Alimentation";

    switch (categorie){

        case "Alimentation":
            print("Depense alimentation");
            break;

        case "Transport":
            print("Depense transport");
            break;

        case "Logement":
            print("depenese logement");
            break;

        case "Santé":
            print("depenses santé");
            break;

        case "Loisirs":
            print("depense loisirs");
            break;

        default:
            print("categorie inconnue");
         
    }

    //boucle for

    for (int i =1; i<=10; i++){
        print("Transaction numero: $i");
    }

    //boucle while

    int compteur = 1;
    while (compteur <=10){
        print("Transaction numero: $compteur");
        compteur ++;
    }
       

    //Affichage
    print("utilisateur : $nom");
    print("revenus : $revenus MAD");
    print("depenses : $depenses MAD");
    print("solde : $solde MAD");
    print("Dépassement des revenus :$depassement");
}