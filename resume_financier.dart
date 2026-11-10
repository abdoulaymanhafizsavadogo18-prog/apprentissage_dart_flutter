double calculerSolde({
    required double revenus,
    required double depenses,
}){
    return  revenus- depenses;

}

bool depasseBudget({
    required double revenus,
    required double depenses,
}){
    if (depenses>revenus){
       return true;
    }
    else return false;
}

void afficherResume({
    required String nom,
    required double solde,
    String devise ='MAD',
}){
    print("nom :$nom");
    print('$solde $devise');
    
}

void main(){
    double solde = calculerSolde(revenus: 8500, depenses: 3200.75);
        print("solde : $solde");

    bool depassement= depasseBudget(revenus: 8500, depenses: 3200.75);
        print("depassement : $depassement");

    afficherResume(nom: "Amadou", solde: 4000);
}